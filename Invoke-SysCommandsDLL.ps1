$DotnetCode = @"
public class SysCommands{
    public static void lookup(string domainname){
        System.Diagnostics.Process.Start("nslookup.exe", domainname);
    }
    
    public void netcmd(string cmd){
        string cmdstring = "/k net.exe " + cmd;
        System.Diagnostics.Process.Start("cmd.exe", cmdstring);
    }
    
    public static void Main(){
        string cmdstring = "/k net.exe " + "user";
        System.Diagnostics.Process.Start("cmd.exe", cmdstring);
    }
}
"@

# Add-Type -TypeDefinition $DotnetCode -OutputType Library -OutputAssembly C:\Users\UN4CKN0WL3Z\Documents\PS\SysCommands.dll

Add-Type -TypeDefinition $DotnetCode -OutputType ConsoleApplication -OutputAssembly C:\Users\UN4CKN0WL3Z\Documents\PS\SysCommands.exe

<# [SysCommands]::lookup("google.com")

$obj = New-Object SysCommands
$obj.netcmd("user")#>