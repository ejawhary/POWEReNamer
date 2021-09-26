# POWEReNamer
Rename PC's with ease

<b>Use locally:</b></p>
<p>Download or clone on local machine you want to rename.</p>
<p>Run powershell as administrator</p>
<p>Navigate to and run POWEReNamer.ps1</p>

<p><b>Use over a network:</b></p>

<p>Server:</p>
<p>Python3 or a SMB share is required</p>
<p>Download or clone on machine accessable over the network to the clinet machines you want to rename.</p>
<p>Run command prompt or terminal</p>
<p>Navigate to and run POWEReNamer.ps1</p>
<p>Start a Python Web Server to host POWEReNamer.ps1 with command python3 -m http.server 8888</p>

<p>Client:</p>
<p>Run powershell as administrator</p>
<p>Run POWEReNamer.ps1 over the network with command replacing SERVER-IP with the IP address of your python server hosting POWEReNamer.ps1\</p\>
<p>IEX (New-Object Net.Webclient).downloadstring('http://SERVER-IP:8888/POWEReNamer.ps1')</p>

<p>Example:</p>
<p>IEX (New-Object Net.Webclient).downloadstring('http://10.10.100.20:8888/POWEReNamer.ps1')</p>
