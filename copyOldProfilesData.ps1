<#
copies essentials from old host to new host
#>
 
# obtain profile name of End User
$username = Read-Host -Prompt 'Enter UserName of eu '
 
# obtain computer name of End User
$hostname = Read-Host -Prompt 'Enter Computer Name of eu '
 
$hostpath = ("\\" + $hostname + "\C$\Users\")
 
# obtain admin profile name
$adminname = Read-Host -Prompt 'Enter Your UserName '
 
# obtain destination
$destination = ("C:\Users\" + $adminname + "\Desktop\" + $username)
 
# copy from old user directory to new temp directory on admins profile
 
# downloads 
Copy-Item ($hostpath + $username + "\Downloads") -Destination ($destination + "\Downloads") -Recurse
 
# favorites, internet explorer
Copy-Item ($hostpath + $username + "\Favorites") -Destination ($destination + "\Favorites") -Recurse
 
# desktop
Copy-Item ($hostpath + $username + "\Desktop") -Destination ($destination + "\Desktop") -Recurse
 
# signatures
Copy-Item ($hostpath + $username + "\AppData\Roaming\Microsoft\Signatures") -Destination $destination -Recurse
 
# bookmarks, chrome
Copy-Item ($hostpath + $username + "\AppData\Local\Google\Chrome\User Data\Default\Bookmarks") -Destination $destination -Recurse
 
pause
 
<#
SOURCES:
 
https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/copy-item?view=powershell-7
#>
