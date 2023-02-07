import { Component, Input, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { SquadraService } from 'src/app/services/squadra.service';
import { RisposteService } from 'src/app/services/risposte.service';
import { UtentiService } from 'src/app/services/utenti.service';
import { PostService } from 'src/app/services/post.service';
import { Post } from '../models/post';
import { Risposta } from '../models/risposta';

@Component({
  selector: 'app-new-post-card',
  templateUrl: './new-post-card.component.html',
  styleUrls: ['./new-post-card.component.scss']
})
export class NewPostCardComponent implements OnInit{

  public mostraRisposte = false;
  public risposte: Risposta[] = [];
  public canAnswer = false;
  public numRisposte = 0;
  public canRemove: boolean=false;
  public nome_utente="";

  constructor(private route: Router, private _utenti: UtentiService, private _squadra: SquadraService, private _risposte: RisposteService, private _auth: AuthenticationService, private _post: PostService) { }

  @Input()
  public post!: Post;

  ngOnInit(): void {
    
      
    const userID = this._auth.getUserID();
    this._utenti.getUserById(userID?+userID:0).subscribe((res)=>{
    this.nome_utente = res.data[0].nome_utente;
      })  
      
     if(this.nome_utente === "MOD" ||  this.nome_utente === this.post.nome_utente){
          this.canRemove=true;
        
      }

    

    if(this._auth.getUserID() != null || undefined) {
      this.canAnswer = true;
    }

    this._squadra.getSquadraById(this.post.id_squadra_fk).subscribe((res)=>{
      this.post.squadra_post = res.data[0].nome_squadra.toUpperCase();
    })

    this._utenti.getUserById(this.post.id_utente_fk).subscribe((res)=>{
      this.post.nome_utente = res.data[0].nome_utente;
      this._squadra.getSquadraById(res.data[0].id_squadra_fk).subscribe((res)=>{
        this.post.squadra_utente = res.data[0].nome_squadra.toUpperCase();
      })
    })

    this._risposte.getRisposteByPost(this.post.id_post_pk).subscribe((res)=>{
      this.numRisposte = res.data.length;
      this.risposte = res.data;
    })

  }

  public openNewResponseForm(){
    this.route.navigate(['/app-new-response-form/' + this.post.id_post_pk]);
  }

  public removePost(){ 
    if(this.nome_utente === "MOD" ||  this.nome_utente === this.post.nome_utente){
      this.canRemove=true;
      this._post.removePost(this.post.id_post_pk).subscribe(() => {
        this.post.nome_utente
      });
    alert("Post rimosso correttamente");
    
  window.location.reload();
  }else{ alert("Non puoi rimuovere un post altrui");}
  }




}
