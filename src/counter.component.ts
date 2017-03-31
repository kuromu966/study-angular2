import { Component } from '@angular/core';

@Component({
    selector: 'my-counter',
    template: `
<div>
  <h2>Counter:{{counter}}</h2>
  <button (click)="increment()">Increment</button>
  <button (click)="decrement()">Decrement</button>
</div>
`
})
export class CounterComponent {
    public counter : number = 0;

    increment(){
	this.counter += 1;
    }

    decrement(){
	this.counter -= 1;
    }

}
