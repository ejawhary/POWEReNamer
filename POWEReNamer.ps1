""
""
"					*** POWEReNamer by Eamonn Jawhary ***"
""
""

"Hello, I am your computer..."

""

if (!([Security.Principal.WindowsIdentity]::GetCurrent().Groups -contains 'S-1-5-32-544')) {
	"Powershell not running as administrator. Please run powershell as administrator and try again"
	Start-Sleep -s 5
	"Exiting"
	Start-Sleep -s 2
	Exit

}

Start-Sleep -s 1

$hostname = Read-Host "Enter New Hostname"

if ((-split $hostname).length -gt 1) {
	"Invalid Hostname"
	"EXITING"
	Start-Sleep -s 5
	Exit
}

if ($hostname.Length -gt 15) {
	"Hostnames more than 15 characters not allowed...Please try again..."
	"EXITING"
	Start-Sleep -s 5
	Exit
}

""

"WARNING: THIS SCRIPT WILL RESTART THIS PC AUTOMATICALLY, PLEASE ENSURE ALL WORK IS SAVED BEFORE CONTINUING..."

""

$continue = Read-Host "DO YOU WANT TO CONTINUE? y/n"

""

if ($continue.ToLower() -eq "y") {
	Rename-Computer -NewName $hostname
	"Hostname changed to $hostname"
	""
	Start-Sleep -s 2
	
	for ($i = 10 ; $i -ge 0 ; $i--)
	{    
		"System restarting in $i"
		Start-Sleep -s 1
	}
	
	Restart-Computer
} else {
	Exit
}