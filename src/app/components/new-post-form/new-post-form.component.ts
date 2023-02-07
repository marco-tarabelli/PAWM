import { Component, NgZone, OnInit, ViewChild } from '@angular/core';
import {CdkTextareaAutosize} from '@angular/cdk/text-field';
import {take} from 'rxjs/operators';
import { Post } from '../models/post';
import { Router } from '@angular/router';
import { SquadraService } from 'src/app/services/squadra.service';
import { PostService } from 'src/app/services/post.service';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { UtentiService } from 'src/app/services/utenti.service';

@Component({
  selector: 'app-new-post-form',
  templateUrl: './new-post-form.component.html',
  styleUrls: ['./new-post-form.component.scss']
})
export class NewPostFormComponent implements OnInit {

  public model: Post = new Post();
  teams: string[] = [];
  selectedTeam: string='';
  
  constructor(private route: Router, private _ngZone: NgZone, private _squadra: SquadraService, private _post: PostService, private _utenti: UtentiService, private _auth: AuthenticationService) { }

  ngOnInit(): void {
    const id = this._auth.getUserID();
    this.model.id_utente_fk = id?+id:0;
    this._squadra.getAllTeams().subscribe((res) => {
      this.teams = res.data.map((team: { nome_squadra: string; }) => team.nome_squadra);
    });
  }

  public pubblica() {
    if (!(this.selectedTeam.replace(/\s/g, '').length== 0 || 
          this.model.titolo_post.replace(/\s/g, '').length== 0 || 
          this.model.contenuto_post.replace(/\s/g, '').length== 0)) {
      this.sistemaStringa();
      this._utenti.verifica(this.model.id_utente_fk).subscribe((res) => {
        if (this.selectedTeam != "") {
          this._squadra.getSquadraByNome(this.model.squadra_post).subscribe((res) => {
            if (res.data[0] === undefined) {
              this._squadra.createSquadra(this.model.squadra_post).subscribe((res) => {
                console.log(res);
                this.model.squadra_post = res.data.insertId.toString();
                this._post.createPost(this.model).subscribe((res) => {
                  console.log(res);
                  this.backHome();
                })
              })
            }
            else {
              this._squadra.getSquadraByNome(this.model.squadra_post).subscribe((res) => {
                this.model.squadra_post = res.data[0].id_squadra_pk.toString();
                this._post.createPost(this.model).subscribe((res) => {
                  console.log(res);
                  this.backHome();
                })
              })
            }
          })
        }
        else {
          alert("mismatch tra gli ID");
        }
      })
    }
    else {
      alert("Non puoi inserire solo spazi vuoti nei campi");
     
    }
  };

  sistemaStringa() {
    this.model.squadra_post = this.model.squadra_post.trim();
    this.model.squadra_post = this.model.squadra_post.replace(/\s\s+/g, ' ');
    this.model.squadra_post = this.model.squadra_post.toLowerCase();
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
