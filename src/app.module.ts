import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { HelloWorldComponent } from './hello-world.component';
import { CounterComponent } from './counter.component';


@NgModule({
    imports: [
	BrowserModule
    ],
    declarations: [
	AppComponent,
	HelloWorldComponent,
	CounterComponent
    ],
    bootstrap: [
	AppComponent,
	CounterComponent
    ]
})
export class AppModule {}
