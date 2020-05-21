import { AuthConfig } from 'angular-oauth2-oidc';

export const authConfig: AuthConfig = {
    // Authz server. (Keycloak)
    issuer: 'http://localhost:18080/auth/realms/myapp',

    // URL of the SPA to redirect the user to after login
    redirectUri: window.location.origin + '/index.html',

    clientId: 'myappClient',

    // Authorization Code Flow
    responseType: 'code',

    scope: 'openid hello offline_access',

    // ToDo: ???
    //strictDiscoveryDocumentValidation: false,

    useSilentRefresh: true,

    showDebugInformation: true,
};