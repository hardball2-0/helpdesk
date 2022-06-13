echo ---

@echo off
echo Integration Serveur par fichier host
echo ip adress   FQDN >> %windir%\System32\drivers\etc\hosts% 
echo ip adress  FQDN >> %windir%\System32\drivers\etc\hosts  
echo ip adress   FQDN >> %windir%\System32\drivers\etc\hosts
echo ip adress   FQDN >> %windir%\System32\drivers\etc\hosts
echo ip adress FQDN   >> %windir%\System32\drivers\etc\hosts

ipconfig /flushdns
   
@echo off