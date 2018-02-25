$ApiCode = @"

[DllImport("kernel32.dll")]
public static extern bool CreateSymbolicLink(string lpSymlinkFileName, string lpTargetFileName, int dwFlags);

"@

$SymLink = Add-Type -MemberDefinition $ApiCode -Name SymLink -Namespace CreateSymLink -PassThru
$SymLink::CreateSymbolicLink('C:\PSS\Link','C:\Users\',1)