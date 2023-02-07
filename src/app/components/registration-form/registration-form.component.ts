import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthenticationService } from '../../services/authentication.service';
import { SquadraService } from '../../services/squadra.service';
import { UtentiService } from '../../services/utenti.service';
import { Utente } from '../models/utente';

@Component({
  selector: 'app-registration-form',
  templateUrl: './registration-form.component.html',
  styleUrls: ['./registration-form.component.scss']
})
export class RegistrationFormComponent implements OnInit {

  public model: Utente = new Utente();
  public mostra = false;
  teams: string[] = [];
  selectedTeam: string='';

  constructor(private route: Router, private _squadra: SquadraService, private _utenti: UtentiService, private _auth: AuthenticationService) { }
 

  ngOnInit(): void {
    this._squadra.getAllTeams().subscribe((res) => {
      this.teams = res.data.map((team: { nome_squadra: string; }) => team.nome_squadra);
    });
  }

  public registrazione(){
    if(!(this.model.nome_utente.replace(/\s/g, '').length == 0 ||
     this.selectedTeam == "" || this.model.squadra_utente.replace(/\s/g, '').length == 0 ||
     this.model.mail_utente.replace(/\s/g, '').length == 0 || 
     this.model.password_utente.replace(/\s/g, '').length == 0)) {

      if(this.checkPassword() && this.checkInputPassword()) {
          this.sistemaStringa();
          this._utenti.checkIfAlreadyExist(this.model).subscribe((res)=>{
            if(Object.keys(res.data).length == 0) {
              this._squadra.getSquadraByNome(this.model.squadra_utente).subscribe((res)=>{
                if(res.data[0] === undefined) {
                    this._utenti.register(this.model).subscribe((res)=>{
                      this._auth.login(this.model).subscribe((res)=>{
                        console.log(res);
                        this._auth.setCurrentUser(res);
                        this.backHome();
                      })
                    })
                }
                else {
                  this._squadra.getSquadraByNome(this.model.squadra_utente).subscribe((res)=>{
                    this.model.id_squadra_fk = res.data[0].id_squadra_pk.toString();
                    this._utenti.register(this.model).subscribe((res)=>{
                      this._auth.login(this.model).subscribe((res)=>{
                        this._auth.setCurrentUser(res);
                        this.backHome();
                      })
                    })
                  })
                }
              })
            }
            else {
              alert("Esiste già un utente con queste credenziali");
            }
          })
      }
      else {
        alert("La password deve contenere sia lettere che numeri");
      }
    }
    else {
      alert("Non puoi inserire solo spazi vuoti nei campi");   
    }
  }


  sistemaStringa() {
    this.model.nome_utente = this.model.nome_utente.replace(/\s+/g, '');
    this.model.squadra_utente = this.model.squadra_utente.trim();
    this.model.squadra_utente = this.model.squadra_utente.replace(/\s\s+/g, ' ');
    this.model.squadra_utente = this.model.squadra_utente.toLowerCase();
    this.model.mail_utente = this.model.mail_utente.trim();
    this.model.mail_utente = this.model.mail_utente.toLowerCase();
  }

  checkPassword(): boolean {
    if(/\d/.test(this.model.password_utente) && /[a-zA-Z]/.test(this.model.password_utente)) {
      return true;
    }
    return false;
}
checkInputPassword(){
if((this.model.password_utente.length>8 && this.model.password_utente.length<17) &&
 (this.model.password_utente==this.model.conferma_password)){
  return true;
}
return false;
}




  mostraPassword() {
    this.mostra = !this.mostra;
  }

  backHome() {
    this.route.navigate([''])
      .then(() => {
      window.location.reload();
    });
  }

 

}
