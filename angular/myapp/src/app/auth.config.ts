import { AuthConfig } from 'angular-oauth2-oidc';

export const authConfig: AuthConfig = {
    // Authz server. (Keycloak)
    issuer: 'http://localhost:18080',

    // URL of the SPA to redirect the user to after login
    redirectUri: window.location.origin + '/index.html',

    clientId: '',

    scope: 'openid',

    // ToDo: ???
    strictDiscoveryDocumentValidation: false,
};