# ===========================================================================
#   ActivatePowerShellProject.ps1 -------------------------------------------
# ===========================================================================

#   function ----------------------------------------------------------------
# ---------------------------------------------------------------------------
function ActivatePowerShellProject {

    <#
    .DESCRIPTION
        Import PowerShellProject activating autocompletion for validating input of module functions.

    .OUTPUTS
        ScriptBlock. Scriptblock with using command.
    #>

    [CmdletBinding(PositionalBinding)]

    [OutputType([ScriptBlock])]

    Param()

    Process {

        return $(Get-Command $(Join-Path -Path $Module.ClassDir -ChildPath "ModuleValidation.ps1") | Select-Object -ExpandProperty ScriptBlock)

    }
}

#   function ----------------------------------------------------------------
# ---------------------------------------------------------------------------
function Validate {

    <#
    .DESCRIPTION
        Return values for the use of validating existing
    
    .OUTPUTS
        System.String[].
    #>

    [CmdletBinding(PositionalBinding)]
    
    [OutputType([System.String[]])]

    Param()

    Process{

       return ()
    
    }
}