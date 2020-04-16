# keycloak-trial

## Run demo app

### Keycloak

    $ sh scripts/00_start_keycloak.sh

### Webapp

    $ cd angular/myapp
    $ npx ng serve

## Setup angular webapp (memo)
sudo apt install jq

mkdir webclient
cd webclient

npm init -y
npm install --save-dev @angular/cli

npx ng new myapp
cd myapp

npm install angular-oauth2-oidc

https://www.aruse.net/entry/2018/10/17/162709

npx ng generate component home
