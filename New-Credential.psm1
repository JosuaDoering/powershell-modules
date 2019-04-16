function New-Credential
{
    Param
    (
        [Parameter(Mandatory=$true)]
        [string]$Username, 
        [Parameter(Mandatory=$true)]
        [string]$Password
    )

    $SecurePassword = $Password | ConvertTo-SecureString -AsPlainText -Force 

    return New-Object System.Management.Automation.PSCredential -ArgumentList $UserName,$SecurePassword
}