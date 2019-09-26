@ECHO OFF

FOR /F %%A IN ('dir /b object_detection\protos ^| findstr /R ".proto$"') DO (
  %UserProfile%\bin\protoc object_detection/protos/%%A --python_out=.
)

SET "PYTHONPATH=%PYTHONPATH%;%CD%;%CD%\slim"
