import { Component, NgZone, OnInit, ViewChild } from '@angular/core';
import {CdkTextareaAutosize} from '@angular/cdk/text-field';
import {take} from 'rxjs/operators';
import { ActivatedRoute, Router } from '@angular/router';
import { Risposta } from '../models/risposta';
import { RisposteService } from 'src/app/services/risposte.service';
import { Post } from '../models/post';
import { PostService } from 'src/app/services/post.service';
import { SquadraService } from 'src/app/services/squadra.service';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { UtentiService } from 'src/app/services/utenti.service';

@Component({
  selector: 'app-new-response-form',
  templateUrl: './new-response-form.component.html',
  styleUrls: ['./new-response-form.component.scss']
})
export class NewResponseFormComponent implements OnInit {

  public idPost!: String | null;
  public post!: Post;
  public model: Risposta = new Risposta();

  constructor(private actRoute: ActivatedRoute, private route: Router, private _ngZone: NgZone, private _risposta: RisposteService, private _post: PostService, private _squadra: SquadraService, private _utenti: UtentiService, private _auth: AuthenticationService) { }

  ngOnInit(): void {
    const id = this._auth.getUserID();
    this.model.id_utente_fk = id?+id:0;
    this.idPost = this.actRoute.snapshot.paramMap.get('idPost');
    this.model.id_post_fk = this.idPost?+this.idPost:0;
    this._post.getPostById(this.model.id_post_fk).subscribe((res)=>{
      if(res.data[0] == undefined) {
        this.backHome();
      }
      this.post = res.data[0];
      this._squadra.getSquadraById(this.post.id_squadra_fk).subscribe((res)=>{
        this.post.squadra_post = res.data[0].nome_squadra.toUpperCase();
      })
    })
  }

  public pubblicaRisposta(){
    if(!(this.model.contenuto_risposta.replace(/\s/g, '').length == 0)) {
      this._utenti.verifica(this.model.id_utente_fk).subscribe((res)=>{
        if(res.data != 0) {
          this._risposta.createRisposta(this.model).subscribe((res)=>{
            console.log(res);
            this.backHome();
          })
        }
        else{
          alert("mismatch tra gli ID");
        }
      })
    }
    else {
      alert("Non puoi inserire solo spazi vuoti nei campi");
    }
  }

  backHome() {
    this.route.navigate(['/app-homepage'])
      .then(() => {
      window.location.reload();
    });
  }

  @ViewChild('autosize')
  autosize!: CdkTextareaAutosize;
  triggerResize() {
    // Wait for changes to be applied, then trigger textarea resize.
    this._ngZone.onStable.pipe(take(1)).subscribe(() => this.autosize.resizeToFitContent(true));
  }

}
