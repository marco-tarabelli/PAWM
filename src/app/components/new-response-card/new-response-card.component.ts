import { Component, Input, OnInit } from '@angular/core';
import { SquadraService } from 'src/app/services/squadra.service';
import { UtentiService } from 'src/app/services/utenti.service';
import { Risposta } from '../models/risposta';

@Component({
  selector: 'app-new-response-card',
  templateUrl: './new-response-card.component.html',
  styleUrls: ['./new-response-card.component.scss']
})
export class NewResponseCardComponent implements OnInit {

  constructor(private _utenti: UtentiService, private _squadra: SquadraService) { }

  @Input()
  public risposta!: Risposta;

  ngOnInit(): void {
    this._utenti.getUserById(this.risposta.id_utente_fk).subscribe((res)=>{
      this.risposta.nome_utente = res.data[0].nome_utente;
      this._squadra.getSquadraById(res.data[0].id_squadra_fk).subscribe((res)=>{
        this.risposta.squadra_utente = res.data[0].nome_squadra.toUpperCase();
      })
    })
  }

}
