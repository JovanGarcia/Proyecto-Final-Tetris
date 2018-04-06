package {

	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.Loader;
	import flash.net.URLRequest;
	import fl.transitions.Tween;
	import fl.transitions.TweenEvent;
	import fl.transitions.easing.*;
	import flash.utils.Timer;
	import flash.events.KeyboardEvent;
	import flash.events.TimerEvent;


	public class Principal extends MovieClip {


		public function Principal() {
			// constructor code
			var posY: int = 0;
			var random: int = Math.random() * 4;
			var figuras: Array = new Array(figura1, figura2, figura3, figura4);
			for (var i: int = 0; i < 4; i++) {
				figuras[i].x = placefig.x;
				figuras[i].y = placefig.y + 1000;
			}
			var band: Boolean = false;
			var figuraant: Array = new Array;
			sig.addEventListener(MouseEvent.CLICK, fsig)
			function fsig(event: MouseEvent): void {
				if (band == true) {
					figuraant[1] = figuras[random];
					random = Math.random() * 4;
					while (figuras[random] == figuraant[1]) {
						random = Math.random() * 4;
					}
					var ida: Tween = new Tween(figuraant[1], "y", Strong.easeInOut, placefig.y, placefig.y - 100, 0.5, true);
					var desv: Tween = new Tween(figuraant[1], "alpha", Strong.easeInOut, 1, 0, 0.5, true);
					var ida2: Tween = new Tween(figuras[random], "y", Strong.easeInOut, placefig.y + 100, placefig.y, 0.5, true);
					var desv2: Tween = new Tween(figuras[random], "alpha", Strong.easeInOut, 0, 1, 0.5, true);
				} else {
					random = Math.random() * 4;
					var ida3: Tween = new Tween(figuras[random], "y", Strong.easeInOut, placefig.y + 100, placefig.y, 0.5, true);
					var desv3: Tween = new Tween(figuras[random], "alpha", Strong.easeInOut, 0, 1, 0.5, true);
					band = true;
				}
			}

			var cont1: int;


			//timer para que caiga el bloque
			var timer: Timer = new Timer(750, cont1++);
			timer.start();
			timer.addEventListener(TimerEvent.TIMER, tiempo);
			function tiempo(tiempoevent: TimerEvent): void {
				if (bloque.y >565) {

				} else {
					bloque.y = posY;
					posY = posY + 25;
				}
			}
			

			stage.addEventListener(Event.ENTER_FRAME, movimiento);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, press);
			stage.addEventListener(KeyboardEvent.KEY_UP, soltar);
			var izq: Boolean = false;
			var der: Boolean = false;
			var vel: Number = 20;


			//funcion presionado
			function press(event: KeyboardEvent): void {
				//determinar la tecla izquierda ascii no 37
				if (event.keyCode == 37) {
					izq = true;
				} else {
					if (event.keyCode == 39) {
						der = true;
					}
				}
			}

			//funcion para soltar las teclas
			function soltar(event: KeyboardEvent): void {
				if (event.keyCode == 37) {
					izq = false;
				} else {
					if (event.keyCode == 39) {
						der = false;
					}
				}
			}

			function movimiento(event: Event): void {
				if (izq == true && bloque.x > 59) {
					bloque.x -= 30;
				} else {
					if (der == true && bloque.x < 260) {
						bloque.x += 30;

					}
				}
			}

		}
	}

}