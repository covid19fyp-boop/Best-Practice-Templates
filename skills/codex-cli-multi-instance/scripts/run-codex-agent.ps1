param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("scaffold","fixer","reviewer")]
    [string]$Role,

    [Parameter(Mandatory=$true)]
    [string]$Prompt,

    [string]$Workdir = ".",
    [switch]$Json
)

$resolvedWorkdir = Resolve-Path $Workdir
$codexHome = Join-Path $resolvedWorkdir ".codex_$Role"

if (-not (Test-Path $codexHome)) {
    New-Item -Path $codexHome -ItemType Directory -Force | Out-Null
}

$jsonFlag = ""
if ($Json) {
    $jsonFlag = "--json"
}

$cmd = "codex exec $jsonFlag --profile $Role `"$Prompt`""
Write-Host "Running role '$Role' with CODEX_HOME=$codexHome"

Push-Location $resolvedWorkdir
try {
    $env:CODEX_HOME = $codexHome
    Invoke-Expression $cmd
}
finally {
    Pop-Location
}
