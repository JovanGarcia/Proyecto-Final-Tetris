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
		//declaracion de variables:
		var dificultadnum: int = 1;
		var bloque: int = 1;
		var vel: Number = 0;
		var tmp: int = 0;
		var c1: int;
		var timer2: Timer = new Timer(1000, c1++);
		var min: Number = 0;

		public function Principal() {
			//clase principal: se detiene en el primer fotograma (portada)
			stop();
			//se llama la funcion portada, para la animacion con tweens
			portada();
			playbtn.addEventListener(MouseEvent.CLICK, fplay);

		}
		
		//funcion portada
		function portada(): void {
			var move1: Tween = new Tween(upv, "x", Strong.easeInOut, upv.x - 1000, upv.x, 1, true);
			var move2: Tween = new Tween(hm, "x", Strong.easeInOut, hm.x + 1000, hm.x, 1, true);
			var move3: Tween = new Tween(name1, "x", Strong.easeInOut, name1.x - 1000, name1.x, 1, true);
			var move4: Tween = new Tween(name2, "x", Strong.easeInOut, name2.x - 1000, name2.x, 1, true);

			var move5: Tween = new Tween(t, "x", Strong.easeInOut, t.x - 10, t.x, 1.5, true);
			var ani1: Tween = new Tween(t, "alpha", Strong.easeInOut, 0, 1, 1.5, true);
			var move6: Tween = new Tween(e, "y", Strong.easeInOut, e.y - 10, e.y, 1.5, true);
			var ani2: Tween = new Tween(e, "alpha", Strong.easeInOut, 0, 1, 1.5, true);
			var move7: Tween = new Tween(t2, "y", Strong.easeInOut, t2.y - 10, t2.y, 1.5, true);
			var ani3: Tween = new Tween(t2, "alpha", Strong.easeInOut, 0, 1, 1.5, true);
			var move8: Tween = new Tween(r, "y", Strong.easeInOut, r.y - 10, r.y, 1.5, true);
			var ani4: Tween = new Tween(r, "alpha", Strong.easeInOut, 0, 1, 1.5, true);
			var move9: Tween = new Tween(i, "y", Strong.easeInOut, i.y - 10, i.y, 1.5, true);
			var ani5: Tween = new Tween(i, "alpha", Strong.easeInOut, 0, 1, 1.5, true);
			var move10: Tween = new Tween(s, "x", Strong.easeInOut, s.x + 10, s.x, 1.5, true);
			var ani6: Tween = new Tween(s, "alpha", Strong.easeInOut, 0, 1, 1.5, true);

			var move11: Tween = new Tween(ofig, "y", Strong.easeInOut, ofig.y - 10, ofig.y, 3, true);
			var ani7: Tween = new Tween(ofig, "alpha", Strong.easeInOut, 0, 1, 2.5, true);

			var figuresfall: Tween = new Tween(figp1, "y", None.easeInOut, -300, 507, 5, true);
			var figuresfal2: Tween = new Tween(figp2, "y", None.easeInOut, -300, figp2.y, 3, true);
			var figuresfal3: Tween = new Tween(figp3, "y", None.easeInOut, -300, figp3.y, 2.8, true);
			var figuresfal4: Tween = new Tween(figp4, "y", None.easeInOut, -300, 430, 4, true);
			var figuresfal5: Tween = new Tween(figp5, "y", None.easeInOut, -300, 401.1, 5, true);
			var figuresfal6: Tween = new Tween(figp6, "y", None.easeInOut, -300, figp6.y, 2.5, true);
		}

		//funcion para pasar al segundo fotograma (seleccionar dificultad del juego)
		function fplay(e: MouseEvent): void {
			gotoAndStop(2);
			//se inicia en la primera dificultad
			dificultadnum = 1;
			startbtn.addEventListener(MouseEvent.CLICK, jugar);
			dificultplus.addEventListener(MouseEvent.CLICK, dplus);
			dificultminus.addEventListener(MouseEvent.CLICK, dminus);
			back.addEventListener(MouseEvent.CLICK, regresar);
			difnum.text = dificultadnum + "";
			fdificultad();
		}
		function jugar(e: MouseEvent): void {
			gotoAndStop(3);
			fotograma3();
		}

		function regresar(e: MouseEvent): void {
			gotoAndStop(1);
			portada();
			playbtn.addEventListener(MouseEvent.CLICK, fplay);
		}

		function dplus(e: MouseEvent): void {
			dificultadnum++;
			fdificultad();
		}

		function dminus(e: MouseEvent): void {
			dificultadnum--;
			fdificultad();
		}

		function fdificultad(): void {

			if (dificultadnum == 0) {
				dificultadnum = 1;
			}
			if (dificultadnum == 1) {
				dificultad.text = "Muy facil";
			}
			if (dificultadnum == 2) {
				dificultad.text = "Facil";
			}
			if (dificultadnum == 3) {
				dificultad.text = "Moderado";
			}
			if (dificultadnum == 4) {
				dificultad.text = "Normal";
			}
			if (dificultadnum == 5) {
				dificultad.text = "Avanzado";
			}
			if (dificultadnum == 6) {
				dificultad.text = "Dificil";
			}
			if (dificultadnum == 7) {
				dificultad.text = "Muy dificil";
			}
			if (dificultadnum == 8) {
				dificultad.text = "Profesional";
			}
			if (dificultadnum == 9) {
				dificultad.text = "Pesadilla";
			}
			if (dificultadnum == 10) {
				dificultad.text = "Inferno";
			}
			if (dificultadnum == 11) {
				dificultadnum = 10;
			}
			difnum.text = dificultadnum + "";
		}

		public function fotograma3() {
			var posY: int = 0;
			var random: int = Math.random() * 4;
			var figuras: Array = new Array(figura1, figura2, figura3, figura4);
			var cuadros1: Array = new Array(c11, c12, c13, c14);
			var cuadros2: Array = new Array(c21, c22, c23, c24);
			for (var i: int = 0; i < 4; i++) {
				figuras[i].x = placefig.x;
				figuras[i].y = placefig.y + 1000;
			}
			
			//timer2 para el contador del tiempo
			timer2.addEventListener(TimerEvent.TIMER, tiempo2);
			timer2.start();
			var band: Boolean = false;
			var figuraant: Array = new Array;
			sig.addEventListener(MouseEvent.CLICK, fsig)
			//funcion para realizar la animacion de el cambio de la figura
			function fsig(event: MouseEvent): void {
				if (band == true) {
					figuraant[1] = figuras[random];
					random = Math.random() *  4;
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

			var cont1: int;
			if (dificultadnum == 1) {
				vel = 1000;
			}
			if (dificultadnum == 2) {
				vel = 900;
			}
			if (dificultadnum == 3) {
				vel = 850;
			}
			if (dificultadnum == 4) {
				vel = 750;
			}
			if (dificultadnum == 5) {
				vel = 700;
			}
			if (dificultadnum == 6) {
				vel = 600;
			}
			if (dificultadnum == 7) {
				vel = 550;
			}
			if (dificultadnum == 8) {
				vel = 450;
			}
			if (dificultadnum == 9) {
				vel = 400;
			}
			if (dificultadnum == 10) {
				vel = 300;
			}


			//timer para que caiga el bloque
			var timer: Timer = new Timer(vel, cont1++);
			timer.start();
			var j: int = 0;


			timer.addEventListener(TimerEvent.TIMER, tiempo);
			function tiempo(tiempoevent: TimerEvent): void {
				if (posY == 620) {
					bloque++;
					c21.y = 100;
					c21.x = 180;
					c22.y = 100;
					c22.x = 220;
					c23.y = 100;
					c23.x = 260;
					c24.y = 60;
					c24.x = 260;
					posY = 0;
				} else {
					if (bloque == 1) {
						posY = c11.y;
						c11.y = posY + 40;
						posY = c12.y;
						c12.y = posY + 40;
						posY = c13.y;
						c13.y = posY + 40;
						posY = c14.y;
						c14.y = posY + 40;
						posY = c12.y;
					}
					if (bloque == 2) {

						posY = c21.y;
						c21.y = posY + 40;
						posY = c22.y;
						c22.y = posY + 40;
						posY = c23.y;
						c23.y = posY + 40;
						posY = c24.y;
						c24.y = posY + 40;
						posY = c22.y;


					}
				}
				for (j = 0; j < 4; j++) {
					if (cuadros2[0].hitTestObject(cuadros1[j])) {

						bloque++;
					}
				}
				for (j = 0; j < 4; j++) {
					if (cuadros2[1].hitTestObject(cuadros1[j])) {

						bloque++;
					}
				}
				for (j = 0; j < 4; j++) {
					if (cuadros1[2].hitTestObject(cuadros2[j])) {

						bloque++;
					}
				}
				for (j = 0; j < 4; j++) {
					if (cuadros1[3].hitTestObject(cuadros2[j])) {
						bloque++;
					}
				}
			}




			stage.addEventListener(Event.ENTER_FRAME, movimiento);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, press);
			stage.addEventListener(KeyboardEvent.KEY_UP, soltar);
			var izq: Boolean = false;
			var der: Boolean = false;



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
				if(bloque==1){
				if (izq == true && c11.x > 60) {
					c11.x -= 40;
					c12.x -= 40;
					c13.x -= 40;
					c14.x -= 40;
					
				} else {
					if (der == true && c13.x < 380) {
						c11.x += 40;
						c12.x += 40;
						c13.x += 40;
						c14.x += 40;
					}
				}
			}
			if(bloque==2){
				if (izq == true && c21.x > 60) {
					c21.x -= 40;
					c22.x -= 40;
					c23.x -= 40;
					c24.x -= 40;
					
				} else {
					if (der == true && c23.x < 380) {
						c21.x += 40;
						c22.x += 40;
						c23.x += 40;
						c24.x += 40;
					}
				}
			}
			}
			stage.addEventListener(Event.ENTER_FRAME, colisiones);

			function colisiones(event: Event): void {


			}


			//funcion del timer para contar los segundos
			function tiempo2(tiempoevent: TimerEvent): void {
				tmp++;
				time.text = min + " : " + tmp + "";
				//funcion para llevar la cuenta de los minutos
				if (tmp == 60) {
					tmp = 0;
					min = min + 1;
					time.text = min + " : " + tmp + "";
				}
			}

		}
	}

}