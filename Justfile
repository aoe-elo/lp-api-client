set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

generate:
    Rename-Item -Path "liquipedia_client_php" -NewName "liquipedia_client_php_old"
    openapi-generator-cli.cmd generate -g php -o liquipedia_client_php -i openapi.yaml --package-name liquipedia-client-php
