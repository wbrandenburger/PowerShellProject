# ===========================================================================
#   PowerShellProject_Environment.ps1 ---------------------------------------
# ===========================================================================

#   environment -------------------------------------------------------------
# ---------------------------------------------------------------------------
@(
    @{  # document and bibliography management environment variable
        Name="ProjectEnv"
        Value="$($Module.Name.ToUpper())_PROJECT"
    }
    @{  # backup of document and bibliography management environment variable
        Name="ProjectEnvOld"
        Value="$($Module.Name.ToUpper())_PROJECT_OLD"
    }
    @{  # backup of systems path environment variable
        Name="PathEnvOld"
        Value="$($Module.Name.ToUpper())_PATH_OLD"
    }
) | ForEach-Object {
    $Module | Add-Member -MemberType NoteProperty -Name $_.Name -Value $_.Value
}
