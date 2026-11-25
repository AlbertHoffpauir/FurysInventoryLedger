# Fury's Inventory Ledger - exporter
# Reads the addon's SavedVariables and writes a CSV that opens straight into Excel.
# In game first: Settings > Addons > Fury's Inventory Ledger > Prepare the Excel file (or /ledger export).
# ESO only writes SavedVariables when the interface reloads or you log out.

param(
    [string]$SavedVars = (Join-Path ([Environment]::GetFolderPath('MyDocuments')) 'Elder Scrolls Online\live\SavedVariables\FurysInventoryLedger.lua'),
    [string]$OutFile   = (Join-Path ([Environment]::GetFolderPath('Desktop')) ("ESO Inventory {0}.csv" -f (Get-Date -Format 'yyyy-MM-dd HHmm'))),
    [switch]$NoOpen
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $SavedVars)) {
    Write-Host "Can't find $SavedVars" -ForegroundColor Red
    Write-Host "Log in with the addon enabled, click 'Prepare the Excel file' in its settings, and run this again."
    exit 1
}

$unescape = [System.Text.RegularExpressions.MatchEvaluator]{
    param($m)
    switch ($m.Groups[1].Value) {
        't'     { "`t" }
        'n'     { ' ' }
        'r'     { ' ' }
        '"'     { '"' }
        '\'     { '\' }
        default { $m.Groups[1].Value }
    }
}

# Every saved row is a quoted string that starts with FIL| . Matching the strings themselves
# (not whole lines) works whether the game wrote the file one entry per line or all on one line.
$text = [System.IO.File]::ReadAllText($SavedVars)
$rows = New-Object System.Collections.Generic.List[string]
foreach ($m in [regex]::Matches($text, '"FIL\|((?:[^"\\]|\\.)*)"')) {
    $line = [regex]::Replace($m.Groups[1].Value, '\\(.)', $unescape)
    $fields = $line -split "`t"
    $quoted = foreach ($f in $fields) { '"' + ($f -replace '"', '""') + '"' }
    $rows.Add(($quoted -join ','))
}

if ($rows.Count -le 1) {
    Write-Host "The saved file has no Excel list yet." -ForegroundColor Yellow
    Write-Host "In game, open Settings > Addons > Fury's Inventory Ledger and click 'Prepare the Excel file'"
    Write-Host "(or type /ledger export). Let it reload the interface, then run this again."
    exit 1
}

$built = [regex]::Match($text, '\["exportBuilt"\]\s*=\s*(\d+)')
if ($built.Success) {
    $when = [DateTimeOffset]::FromUnixTimeSeconds([long]$built.Groups[1].Value).LocalDateTime
    Write-Host ("List prepared in game on {0:yyyy-MM-dd} at {0:HH:mm}." -f $when)
}

[System.IO.File]::WriteAllLines($OutFile, $rows, (New-Object System.Text.UTF8Encoding $true))
Write-Host ("Wrote {0:N0} items to {1}" -f ($rows.Count - 1), $OutFile) -ForegroundColor Green

if (-not $NoOpen) { Invoke-Item -LiteralPath $OutFile }
