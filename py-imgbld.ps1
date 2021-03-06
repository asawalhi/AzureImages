# Create Dir and download py-installer
cd \
mkdir py
cd py
Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.7.0/python-3.7.0-amd64.exe" -OutFile "c:/py/python-3.7.0.exe"

#Install py 3.7.0 x64 and set env path
Start-Process "C:\py\python-3.7.0.exe" -argumentlist "/quiet InstallAllUsers=1 PrependPath=1 Include_test=0 Include_pip=1" -Wait 
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

#upgrade pip
cd c:\buildArtifacts\ImageBuilder\
python -m pip install --upgrade pip

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 


#Install all reqs
pip install -r C:\reqs.txt
pip list
