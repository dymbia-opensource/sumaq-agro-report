# =====================================================================
# build.ps1 — Compila el informe a PDF en Windows (PowerShell)
#   .\pandoc\build.ps1                 -> entrega TB2
#   .\pandoc\build.ps1 -Milestone av2  -> entrega AV2
# Requisitos: Pandoc 3.x, XeLaTeX y mmdc (Mermaid CLI con Chromium) en el PATH.
# =====================================================================
param(
  [string]$Milestone = "tb2",
  [string]$Nrc = "7742",
  [string]$Startup = "dymbia"
)
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot
New-Item -ItemType Directory -Force -Path build | Out-Null
$out = "build/upc-pre-202620-1asi0729-$Nrc-$Startup-report-$Milestone.pdf"
pandoc --defaults=build.yaml -o $out
if ($LASTEXITCODE -ne 0) { throw "Pandoc terminó con errores." }
Write-Host "PDF generado: $out" -ForegroundColor Green