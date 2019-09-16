# ===========================================================================
#   Write-PowerShellProjectStatus.ps1 ---------------------------------------
# ===========================================================================

#   function ----------------------------------------------------------------
# ---------------------------------------------------------------------------
function Write-PowerShellProjectStatus {

    [CmdletBinding(PositionalBinding)]

    [OutputType([Void])]

    Param ()
    
    Process{

        $venv_path = [System.Environment]::GetEnvironmentVariable($Module.ProjectEnv, "process")
        Write-PromptModuleStatus -Module "Venv" -Value $(Split-Path -Path $venv_path -leaf)
    }
}
