@echo off

md "%userprofile%\AppData\Roaming\Microsoft\Signatures\

IF not exist "%userprofile%\AppData\Roaming\Microsoft\Signatures\court.htm" ( 


COPY "\\path\signatures\court.*" "%userprofile%\AppData\Roaming\Microsoft\Signatures"
md "%userprofile%\AppData\Roaming\Microsoft\Signatures\court_fichiers"

COPY "\\DYNARENSERVER2\documents_dynaren\systeme_information\logiciels\signatures\court_fichiers\*" "%userprofile%\AppData\Roaming\Microsoft\Signatures\court_fichiers"


) ELSE ( echo existe deja
)



IF not exist "%userprofile%\AppData\Roaming\Microsoft\Signatures\long.htm" (

COPY "\\path \signatures\long.*" "%userprofile%\AppData\Roaming\Microsoft\Signatures"
md "%userprofile%\AppData\Roaming\Microsoft\Signatures\long_fichiers"


COPY "\\DYNARENSERVER2\documents_dynaren\systeme_information\logiciels\signatures\long_fichiers\*" "%userprofile%\AppData\Roaming\Microsoft\Signatures\long_fichiers"

) ELSE ( echo existe deja
)


IF not exist "%userprofile%\AppData\Roaming\Microsoft\Signatures\new.htm" (

COPY "\\path \signatures\new.*" "%userprofile%\AppData\Roaming\Microsoft\Signatures"
md "%userprofile%\AppData\Roaming\Microsoft\Signatures\new_fichiers"


COPY "\\DYNARENSERVER2\documents_dynaren\systeme_information\logiciels\signatures\new_fichiers\*" "%userprofile%\AppData\Roaming\Microsoft\Signatures\new_fichiers"

) ELSE ( echo existe deja
)



pause
exit