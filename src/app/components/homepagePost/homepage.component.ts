import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { PostService } from 'src/app/services/post.service';
import { UtentiService } from 'src/app/services/utenti.service';
import { Post } from '../models/post';
import { HttpClient } from '@angular/common/http';


@Component({
  selector: 'app-homepage',
  templateUrl: './homepage.component.html',
  styleUrls: ['./homepage.component.scss']
})
export class HomepageComponent implements OnInit {
  public posts: Post[] = [];
  filtroSquadra: String = '';
  isLogged: boolean = false;
  public nome_utente = '';
  constructor(private route:Router, private _post: PostService, private _auth: AuthenticationService, private _utenti: UtentiService,private _http: HttpClient) { }

  ngOnInit(): void {
    if(this._auth.getUserID() != null || undefined) {
      const userID = this._auth.getUserID();
      this.isLogged = true;
      this._utenti.getUserById(userID?+userID:0).subscribe((res)=>{
        this.nome_utente = res.data[0].nome_utente;
      })
    }
    this._post.getAllPost().subscribe((res)=>{
      this.posts = res.data;
      
    })
  }

  public openNewPostForm(){
    this.route.navigate(['/app-new-post-form']);
  }

  public openRegistrationForm(){
    this.route.navigate(['/app-registration-form']);
  }

  public openLoginForm(){
    this.route.navigate(['/app-login-form']);
  }

  public logout(){
    localStorage.clear();
    window.location.reload();
  }

  public filterON(){
    this.filtroSquadra = this.filtroSquadra.trim();
    this.filtroSquadra = this.filtroSquadra.replace(/\s\s+/g, ' ');
    this.filtroSquadra = this.filtroSquadra.toLowerCase();
    
    if(this.filtroSquadra == ''){
      this.ngOnInit();
    } else {
      this._post.getPostByNomeSquadra(this.filtroSquadra).subscribe((res) => {
        this.posts = res.data;
        if(this.posts.length == 0){
          alert('Non ci sono post relativi a questa squadra');
          this.ngOnInit();
        }
    })
  }   
}


}




