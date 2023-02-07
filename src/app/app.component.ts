import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AuthenticationService } from './services/authentication.service';
import { UtentiService } from './services/utenti.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'FootballHouse';
  isLogged: boolean = false;
  public nome_utente = '';
  
  constructor(private route:Router, private _auth: AuthenticationService, private _utenti: UtentiService) { 
    if(this._auth.getUserID() != null || undefined) {
    const userID = this._auth.getUserID();
    this.isLogged = true;
    this._utenti.getUserById(userID?+userID:0).subscribe((res)=>{
      this.nome_utente = res.data[0].nome_utente;
    })}}







}
