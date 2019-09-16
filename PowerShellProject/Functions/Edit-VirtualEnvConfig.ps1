# ===========================================================================
#   Edit-PowerShellProjectConfig.ps1 ----------------------------------------
# ===========================================================================

#   function ----------------------------------------------------------------
# ---------------------------------------------------------------------------
function Edit-PowerShellProjectConfig {

   <#
    .SYNOPSIS
        Edit the content of module's configuration file.

    .DESCRIPTION
        Edit the content of module's configuration file in defined editor.

    .EXAMPLE
        PS C:\> Edit-PowerShellProjectConfig 

        -----------
        Description
        Open the content of module's configuration file in defined editor. for editing.

    .INPUTS
        None.

    .OUTPUTS
        None.
    #>

    [CmdletBinding(PositionalBinding)]

    [OutputType([Void])]

    Param()

    Process {

        $editor_args = $($Module.EditorArgs + " " + $Module.Config)
        
        # open existing requirement file
        if (Test-Path -Path $Module.Config){
            Start-Process -Path $Module.Editor -NoNewWindow -Args $editor_args
        }
    }
}
