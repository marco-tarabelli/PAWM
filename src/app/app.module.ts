import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { MatFormFieldModule } from '@angular/material/form-field';
import { TextFieldModule } from '@angular/cdk/text-field';
import { MatButtonModule } from '@angular/material/button';
import { MatInputModule } from '@angular/material/input';
import { MatCardModule } from '@angular/material/card';
import { MatIconModule } from '@angular/material/icon';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';


import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomepageComponent } from './components/homepagePost/homepage.component';
import { NewPostFormComponent } from './components/new-post-form/new-post-form.component';
import { NewPostCardComponent } from './components/new-post-card/new-post-card.component';
import { NewResponseFormComponent } from './components/new-response-form/new-response-form.component';
import { NewResponseCardComponent } from './components/new-response-card/new-response-card.component';
import { RegistrationFormComponent } from './components/registration-form/registration-form.component';
import { JwtInterceptor } from './interceptors/jwt.interceptor';
import { LoginFormComponent } from './components/login-form/login-form.component';
import { NavbarComponent } from './components/navbar/navbar.component';
import { ContactComponent } from './components/contact/contact.component';
import { StatisticheComponent } from './components/statistiche/statistiche.component';
import { FirstPageComponent } from './components/first-page/first-page.component';
import { FooterComponent } from './components/footer/footer.component';


@NgModule({
  declarations: [
    AppComponent,
    HomepageComponent,
    NewPostFormComponent,
    NewPostCardComponent,
    NewResponseFormComponent,
    NewResponseCardComponent,
    RegistrationFormComponent,
    LoginFormComponent,
    NavbarComponent,
    ContactComponent,
    StatisticheComponent,
    FirstPageComponent,
    FooterComponent,
    
  ],
  imports: [
    BrowserModule,
    CommonModule,
    FormsModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatFormFieldModule,
    TextFieldModule,
    MatButtonModule,
    MatInputModule,
    MatCardModule,
    HttpClientModule,
    MatIconModule
  ],
  providers: [{ provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true }],
  bootstrap: [AppComponent]
})
export class AppModule { }
