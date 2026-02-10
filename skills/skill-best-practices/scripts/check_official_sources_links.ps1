param(
    [string]$SkillsRoot = "skills",
    [int]$TimeoutSeconds = 20
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $SkillsRoot)) {
    Write-Error "Skills root not found: $SkillsRoot"
    exit 1
}

$sourceFiles = Get-ChildItem -Path $SkillsRoot -Recurse -File -Filter "official-sources.md"
$rows = New-Object System.Collections.Generic.List[object]

foreach ($file in $sourceFiles) {
    foreach ($line in (Get-Content -LiteralPath $file.FullName)) {
        if ($line -match 'https?://\S+') {
            $rows.Add([pscustomobject]@{
                    File = $file.FullName
                    Url  = $Matches[0].Trim()
                })
        }
    }
}

$rows = $rows | Sort-Object Url -Unique
$userAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) CodexSkillLinkCheck/1.0"
$errors = New-Object System.Collections.Generic.List[object]
$warnings = New-Object System.Collections.Generic.List[object]

foreach ($row in $rows) {
    $url = $row.Url
    $codeText = & curl.exe -s -L --max-time $TimeoutSeconds -A $userAgent -o NUL -w "%{http_code}" $url
    $code = 0
    [void][int]::TryParse($codeText, [ref]$code)

    if ($code -eq 0) {
        $errors.Add([pscustomobject]@{ Code = $code; Url = $url; File = $row.File; Detail = "No response / timeout" })
    } elseif ($code -ge 400) {
        $errors.Add([pscustomobject]@{ Code = $code; Url = $url; File = $row.File; Detail = "HTTP error" })
    } elseif ($code -ge 300) {
        $warnings.Add([pscustomobject]@{ Code = $code; Url = $url; File = $row.File; Detail = "Redirected; verify canonical path" })
    }
}

Write-Host ""
Write-Host "Official Sources Link Check"
Write-Host "Files: $($sourceFiles.Count)"
Write-Host "URLs:  $($rows.Count)"
Write-Host "Errors: $($errors.Count)"
Write-Host "Warnings: $($warnings.Count)"

if ($warnings.Count -gt 0) {
    Write-Host ""
    Write-Host "Warnings:"
    $warnings | Sort-Object Code, Url | Format-Table -AutoSize
}

if ($errors.Count -gt 0) {
    Write-Host ""
    Write-Host "Errors:"
    $errors | Sort-Object Code, Url | Format-Table -AutoSize
    exit 1
}

Write-Host ""
Write-Host "All official source links returned < 400."
exit 0
