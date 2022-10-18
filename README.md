# keycloak-trial

# Required tools

## For keycloak

    $ sudo apt install docker.io

## For npm

    $ sudo apt install nodejs
    $ sudo apt install npm

## For scripts

    $ sudo apt install jq

# Run demo app

## Keycloak

    $ sh scripts/00_start_keycloak.sh
    $ sh scripts/01_create_realm.sh
    $ sh scripts/02_create_scopes.sh
    $ sh scripts/03_create_client.sh
    $ sh scripts/04_create_user.sh

## Webapp

    $ cd angular/myapp
    $ npx ng serve

# Implement angular webapp (memo)

Make angular working directory.

    $ mkdir angular
    $ cd angular

    $ npm init -y
    $ npm install --save-dev @angular/cli

Create myapp.

    $ npx ng new myapp
    $ cd myapp

Install angular-oauth2-oidc.

    $ npm install angular-oauth2-oidc

Implement myapp.
Good information in japanese: https://www.aruse.net/entry/2018/10/17/162709

If you want to add angular component, Do as following.

    $ npx ng generate component home

If you want to dump jwt, Install @auth0/angular-jwt.

('jsonwebtoken' is for node.js. Not for browser. Don't install it!)

    $ npm install @auth0/angular-jwt
