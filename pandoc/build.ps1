# =====================================================================
# build.ps1 — Compila el informe a PDF en Windows (PowerShell)
#   .\pandoc\build.ps1                 -> entrega TB2
#   .\pandoc\build.ps1 -Milestone av2  -> entrega AV2
# Requisitos: Pandoc 3.x, XeLaTeX y Mermaid CLI (local o en PATH) con Chromium.
# =====================================================================
param(
  [string]$Milestone = "tb2",
  [string]$Nrc = "7742",
  [string]$Startup = "dymbia"
)
$ErrorActionPreference = "Stop"
$previousPath = $env:PATH
$previousBrowserCache = $env:PUPPETEER_CACHE_DIR
Push-Location $PSScriptRoot
try {
  $mermaidBin = Join-Path $PSScriptRoot 'build/mermaid-tools/node_modules/.bin'
  if (Test-Path -LiteralPath (Join-Path $mermaidBin 'mmdc.cmd') -PathType Leaf) {
    $env:PATH = "$mermaidBin;$env:PATH"
    if (-not $env:PUPPETEER_CACHE_DIR) {
      $env:PUPPETEER_CACHE_DIR = Join-Path $PSScriptRoot 'build/mermaid-browser'
    }
  }
  New-Item -ItemType Directory -Force -Path build | Out-Null
  $out = "build/upc-pre-202620-1asi0729-$Nrc-$Startup-report-$Milestone.pdf"
  pandoc --defaults=build.yaml -o $out
  if ($LASTEXITCODE -ne 0) { throw "Pandoc terminó con errores." }
  Write-Host "PDF generado: $out" -ForegroundColor Green
} finally {
  $env:PATH = $previousPath
  $env:PUPPETEER_CACHE_DIR = $previousBrowserCache
  Pop-Location
}
