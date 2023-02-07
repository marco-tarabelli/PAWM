import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { UtentiService } from 'src/app/services/utenti.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss']
})
export class NavbarComponent implements OnInit {
  isLogged: boolean = false;
  public nome_utente = '';
  constructor(private route:Router, private _auth: AuthenticationService, private _utenti: UtentiService) {
    
   }

  ngOnInit(): void {
    if(this._auth.getUserID() != null || undefined) {
      const userID = this._auth.getUserID();
      this.isLogged = true;
      this._utenti.getUserById(userID?+userID:0).subscribe((res)=>{
        this.nome_utente = res.data[0].nome_utente;
      })
    }
  }


  public openLogin(){
    this.route.navigate(['/app-login-form']);
  }

  public logout(){
    localStorage.clear();
    window.location.reload();
  }

  backHome() {
    this.route.navigate(['/app-homepage']);
  }
  

}
