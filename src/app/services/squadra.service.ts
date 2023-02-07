import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import {Axios} from 'axios';

@Injectable({
  providedIn: 'root'
})
export class SquadraService {
  
  getAllTeams():Observable<any> {
    return this._http.get(environment.squadraUrl);
  }

  constructor(private _http:HttpClient) { }

  getSquadraByNome(nome:String):Observable<any>
  {
    return this._http.get(environment.squadraUrl + '/nome/' + nome);
  }

  getSquadraById(ID:Number):Observable<any>
  {
    return this._http.get(environment.squadraUrl + '/' + ID);
  }

  createSquadra(nome:String):Observable<any>
  {
    return this._http.post(environment.squadraUrl, {nome_squadra: nome});
  }





}
