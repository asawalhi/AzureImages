
cd \
mkdir py
cd py
Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.7.0/python-3.7.0.exe" -OutFile "c:/py/python-3.7.0.exe"

Start-Process "C:\py\python-3.7.0.exe" -argumentlist "/quiet InstallAllUsers=1 PrependPath=1 Include_test=0 Include_pip=1" -Wait 

invoke-expression 'cmd /c start powershell -command {pip install pandas}' 

##
