import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'app';
  checked = true;
  
  doIt() {
    this.title = 'Manfred was here!';
    console.debug(this.title);
  }
}
