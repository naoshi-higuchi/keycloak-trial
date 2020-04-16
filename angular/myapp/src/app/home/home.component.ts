import { Component, OnInit } from '@angular/core';
import { OAuthService } from 'angular-oauth2-oidc';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  constructor(private oauthService: OAuthService) { }

  ngOnInit(): void {
  }

  public login() {
    this.oauthService.initImplicitFlow();
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

  public get idToken() {
    const idToken = this.oauthService.getIdToken();

    if (!idToken) {
      return null;
    }

    return idToken;
  }
}
