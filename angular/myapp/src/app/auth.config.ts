import { AuthConfig } from 'angular-oauth2-oidc';

export const authConfig: AuthConfig = {
    // Authz server. (Keycloak)
    issuer: 'http://localhost:18080/auth/realms/myapp',

    // URL of the SPA to redirect the user to after login
    redirectUri: window.location.origin + '/index.html',

    clientId: 'myappClient',

    scope: 'openid hello foo bar hoge',

    // ToDo: ???
    //strictDiscoveryDocumentValidation: false,

    showDebugInformation: true,
};