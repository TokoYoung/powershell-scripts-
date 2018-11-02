################################################################################################
#This script will delete specified user profile from all remote desktop session host servers.
#To run this script you must have administrative privilages on all remote desktop session host.
#User, whose profile needs to be deleted, should be specified in logedOnUserName variable. 
#
#Author: Tornike Enukidze
#
################################################################################################

$logedOnUserName = 'Mari.Khutsishvili'

$sessionID1 = ((quser /server getbssvrrds01.fincage.local |Where-Object {$_ -match $logedOnUserName})-split ' +')[3]
Invoke-RDUserLogoff -HostServer getbssvrrds01.fincage.local -UnifiedSessionID $sessionID1 -Force

$sessionID2 = ((quser /server getbssvrrds02.fincage.local |Where-Object {$_ -match $logedOnUserName})-split ' +')[3]
Invoke-RDUserLogoff -HostServer getbssvrrds02.fincage.local -UnifiedSessionID $sessionID2 -Force

$sessionID3 = ((quser /server getbssvrrds03.fincage.local |Where-Object {$_ -match $logedOnUserName})-split ' +')[3]
Invoke-RDUserLogoff -HostServer getbssvrrds03.fincage.local -UnifiedSessionID $sessionID3 -Force

$sessionID5 = ((quser /server getbssvrrds05.fincage.local |Where-Object {$_ -match $logedOnUserName})-split ' +')[3]
Invoke-RDUserLogoff -HostServer getbssvrrds05.fincage.local -UnifiedSessionID $sessionID5 -Force

$sessionID6 = ((quser /server getbssvrrds06.fincage.local |Where-Object {$_ -match $logedOnUserName})-split ' +')[3]
Invoke-RDUserLogoff -HostServer getbssvrrds06.fincage.local -UnifiedSessionID $sessionID6 -Force


$logedOnUserNameForRDDelete = "*Mariami.Chitashvili*"


Get-CimInstance -ComputerName getbssvrrds01.fincage.local win32_userprofile -Verbose | Where {$_.LocalPath -like $logedOnUserNameForRDDelete} |
Remove-CimInstance -Verbose

Get-CimInstance -ComputerName getbssvrrds02.fincage.local win32_userprofile -Verbose | Where {$_.LocalPath -like $logedOnUserNameForRDDelete} |
Remove-CimInstance -Verbose

Get-CimInstance -ComputerName getbssvrrds03.fincage.local win32_userprofile -Verbose | Where {$_.LocalPath -like $logedOnUserNameForRDDelete} |
Remove-CimInstance -Verbose

Get-CimInstance -ComputerName getbssvrrds05.fincage.local win32_userprofile -Verbose | Where {$_.LocalPath -like $logedOnUserNameForRDDelete} |
Remove-CimInstance -Verbose

Get-CimInstance -ComputerName getbssvrrds06.fincage.local win32_userprofile -Verbose | Where {$_.LocalPath -like $logedOnUserNameForRDDelete} |
Remove-CimInstance -Verbose