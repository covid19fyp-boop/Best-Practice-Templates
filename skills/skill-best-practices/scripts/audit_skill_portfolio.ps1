param(
    [string]$SkillsRoot = "skills"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $SkillsRoot)) {
    Write-Error "Skills root not found: $SkillsRoot"
    exit 1
}

function Get-FrontmatterValue {
    param(
        [string[]]$Lines,
        [string]$Key
    )
    $pattern = "^\s*$Key\s*:\s*(.+?)\s*$"
    foreach ($line in $Lines) {
        if ($line -match $pattern) {
            return $Matches[1].Trim()
        }
    }
    return $null
}

$errors = New-Object System.Collections.Generic.List[object]
$warnings = New-Object System.Collections.Generic.List[object]
$rows = New-Object System.Collections.Generic.List[object]

$skillDirs = Get-ChildItem -LiteralPath $SkillsRoot -Directory | Sort-Object Name
$folderNamePattern = '^[a-z0-9-]{1,64}$'
$reservedNamePattern = '(?i)(anthropic|claude)'

foreach ($dir in $skillDirs) {
    $folder = $dir.Name
    $skillMd = Join-Path $dir.FullName "SKILL.md"
    $agentYaml = Join-Path $dir.FullName "agents/openai.yaml"
    $fmName = $null
    $fmDescription = $null

    if (-not ($folder -match $folderNamePattern)) {
        $errors.Add([pscustomobject]@{ Type = "INVALID_FOLDER_NAME"; Skill = $folder; Detail = "Use lowercase letters, digits, hyphens, max 64 chars." })
    }
    if ($folder -match $reservedNamePattern) {
        $errors.Add([pscustomobject]@{ Type = "RESERVED_WORD_IN_FOLDER"; Skill = $folder; Detail = "Folder name contains reserved token anthropic/claude." })
    }
    if (-not (Test-Path -LiteralPath $skillMd)) {
        $errors.Add([pscustomobject]@{ Type = "MISSING_SKILL_MD"; Skill = $folder; Detail = "Missing SKILL.md." })
    }
    if (-not (Test-Path -LiteralPath $agentYaml)) {
        $errors.Add([pscustomobject]@{ Type = "MISSING_AGENT_YAML"; Skill = $folder; Detail = "Missing agents/openai.yaml." })
    }

    if (Test-Path -LiteralPath $skillMd) {
        $lines = Get-Content -LiteralPath $skillMd
        $fmName = Get-FrontmatterValue -Lines $lines -Key "name"
        $fmDescription = Get-FrontmatterValue -Lines $lines -Key "description"

        if (-not $fmName) {
            $errors.Add([pscustomobject]@{ Type = "MISSING_FRONTMATTER_NAME"; Skill = $folder; Detail = "SKILL.md frontmatter missing name." })
        } else {
            if ($fmName -ne $folder) {
                $errors.Add([pscustomobject]@{ Type = "FOLDER_NAME_MISMATCH"; Skill = $folder; Detail = "Frontmatter name '$fmName' must match folder name." })
            }
            if ($fmName -notmatch $folderNamePattern) {
                $errors.Add([pscustomobject]@{ Type = "INVALID_FRONTMATTER_NAME"; Skill = $folder; Detail = "Frontmatter name '$fmName' does not match naming pattern." })
            }
            if ($fmName.Length -gt 64) {
                $errors.Add([pscustomobject]@{ Type = "FRONTMATTER_NAME_TOO_LONG"; Skill = $folder; Detail = "Frontmatter name length exceeds 64 chars." })
            }
            if ($fmName -match $reservedNamePattern) {
                $errors.Add([pscustomobject]@{ Type = "RESERVED_WORD_IN_FRONTMATTER_NAME"; Skill = $folder; Detail = "Frontmatter name contains reserved token anthropic/claude." })
            }
        }

        if (-not $fmDescription) {
            $errors.Add([pscustomobject]@{ Type = "MISSING_FRONTMATTER_DESCRIPTION"; Skill = $folder; Detail = "SKILL.md frontmatter missing description." })
        } elseif ($fmDescription.Length -gt 1024) {
            $warnings.Add([pscustomobject]@{ Type = "LONG_FRONTMATTER_DESCRIPTION"; Skill = $folder; Detail = "Description length exceeds 1024 chars." })
        }
    }

    $rows.Add([pscustomobject]@{
            SkillFolder = $folder
            FrontmatterName = $fmName
            HasSkillMd = (Test-Path -LiteralPath $skillMd)
            HasAgentYaml = (Test-Path -LiteralPath $agentYaml)
        })
}

$dupes = $rows | Where-Object { $_.FrontmatterName } | Group-Object FrontmatterName | Where-Object { $_.Count -gt 1 }
foreach ($dup in $dupes) {
    $skills = ($dup.Group | Select-Object -ExpandProperty SkillFolder) -join ", "
    $errors.Add([pscustomobject]@{ Type = "DUPLICATE_FRONTMATTER_NAME"; Skill = $dup.Name; Detail = "Used by: $skills" })
}

Write-Host ""
Write-Host "Skill Portfolio Audit"
Write-Host "Root: $SkillsRoot"
Write-Host "Skills: $($skillDirs.Count)"
Write-Host "Errors: $($errors.Count)"
Write-Host "Warnings: $($warnings.Count)"

if ($errors.Count -gt 0) {
    Write-Host ""
    Write-Host "Errors:"
    $errors | Sort-Object Type, Skill | Format-Table -AutoSize
}
if ($warnings.Count -gt 0) {
    Write-Host ""
    Write-Host "Warnings:"
    $warnings | Sort-Object Type, Skill | Format-Table -AutoSize
}

if ($errors.Count -gt 0) {
    exit 1
}

Write-Host ""
Write-Host "Audit passed."
exit 0
