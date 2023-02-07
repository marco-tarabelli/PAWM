import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Risposta } from '../components/models//risposta';

@Injectable({
  providedIn: 'root'
})
export class RisposteService {

  constructor(private _http:HttpClient) { }

  getRisposteByPost(ID:Number):Observable<any>
  {
    return this._http.get(environment.risposteUrl + '/' + ID);
  }

  createRisposta(data: Risposta):Observable<any>
  {
    return this._http.post(environment.risposteUrl, data)
  }

 
 
  deleteRisposteByPost(ID:Number):Observable<any>
  {
    return this._http.delete(environment.risposteUrl + '/' + ID);
  }

}
