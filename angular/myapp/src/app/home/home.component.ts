import { Component, OnInit } from '@angular/core';
import { OAuthService } from 'angular-oauth2-oidc';
import { JwtHelperService } from '@auth0/angular-jwt'

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  private jwt;

  constructor(private oauthService: OAuthService) {
    this.jwt = new JwtHelperService();
  }

  ngOnInit(): void {
  }

  public login() {
    this.oauthService.initCodeFlow();
  }

  public logout() {
    this.oauthService.logOut();
  }

  public get accessToken() {
    const accessToken = this.oauthService.getAccessToken();

    if (!accessToken) {
      return null;
    }

    return accessToken;
  }

  public get accessTokenDecoded() {
    const accessTokenDecoded = this.jwt.decodeToken(this.accessToken);

    if (!accessTokenDecoded) {
      return null;
    }

    return JSON.stringify(accessTokenDecoded);
  }

  public get idToken() {
    const idToken = this.oauthService.getIdToken();

    if (!idToken) {
      return null;
    }

    return idToken;
  }

  public get idTokenDecoded() {
    const idTokenDecoded = this.jwt.decodeToken(this.idToken);

    if (!idTokenDecoded) {
      return null;
    }

    return JSON.stringify(idTokenDecoded);
  }
}
