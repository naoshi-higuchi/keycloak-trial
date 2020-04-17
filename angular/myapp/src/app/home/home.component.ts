import { Component, OnInit, Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { OAuthService } from 'angular-oauth2-oidc';
import { JwtHelperService } from '@auth0/angular-jwt';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  private jwt;

  constructor(private oauthService: OAuthService, private http: HttpClient) {
    this.jwt = new JwtHelperService();
  }

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

  public async hello() {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'plain/text',
        'Authorization': 'Bearer ' + this.accessToken
      })
    };
    const rsp = await this.http.get("http://localhost:8080/hello", httpOptions).toPromise();

    console.log(JSON.stringify(rsp));
  }
}
