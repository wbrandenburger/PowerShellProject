# ===========================================================================
#   PowerShellProject_Functions.ps1 -----------------------------------------
# ===========================================================================

#   functions ---------------------------------------------------------------
# ---------------------------------------------------------------------------
Get-ChildItem -Path $Module.FunctionsDir -Filter "*.ps1" | ForEach-Object {
    . $_.FullName
}

#   class -------------------------------------------------------------------
# ---------------------------------------------------------------------------
Get-ChildItem -Path $Module.ClassDir -Filter "*.ps1" | ForEach-Object {
    . $_.FullName
}