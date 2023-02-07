import { Component, NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomepageComponent } from './components/homepagePost/homepage.component';
import { LoginFormComponent } from './components/login-form/login-form.component';
import { NewPostFormComponent } from './components/new-post-form/new-post-form.component';
import { NewResponseFormComponent } from './components/new-response-form/new-response-form.component';
import { RegistrationFormComponent } from './components/registration-form/registration-form.component';
import { AuthGuard } from './services/guard/auth.guard';
import { LoggedGuard } from './services/guard/logged.guard';
import { ContactComponent } from './components/contact/contact.component';
import { StatisticheComponent } from './components/statistiche/statistiche.component';
import { FirstPageComponent } from './components/first-page/first-page.component';

const routes: Routes = [
{path: 'app-firstpage', component: FirstPageComponent},
{ path: 'app-homepage', component: HomepageComponent  },
{ path: 'app-new-post-form', component: NewPostFormComponent, canActivate: [AuthGuard]  },
{ path: 'app-new-response-form/:idPost', component: NewResponseFormComponent, canActivate: [AuthGuard]  },
{ path: 'app-registration-form', component: RegistrationFormComponent, canActivate: [LoggedGuard]  },
{ path: 'app-login-form', component: LoginFormComponent, canActivate: [LoggedGuard]  },
{path: 'app-contact', component: ContactComponent},
{path: 'app-statistiche', component:  StatisticheComponent},
{path: '', component: FirstPageComponent},
{ path: '**', redirectTo: 'app-firstpage' }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
