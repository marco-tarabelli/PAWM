import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-statistiche',
  templateUrl: './statistiche.component.html',
  styleUrls: ['./statistiche.component.scss']
})
export class StatisticheComponent implements OnInit {
  public i : number=0;
  constructor() { }

  ngOnInit(): void {
    for(this.i<1;this.i++;){
      window.location.reload();
    }
  }

}
