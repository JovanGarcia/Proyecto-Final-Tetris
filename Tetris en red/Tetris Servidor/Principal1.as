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
	import flash.net.LocalConnection;
	import flash.geom.ColorTransform;
	import flash.filters.BevelFilter;


	public class Principal1 extends MovieClip {
		//declaracion de variables:
		var figc: int = 0;
		var dificultadnum: int = 1;
		var bloque: int = 1;
		var vel: Number = 0;
		var tmp: int = 0;
		var c1: int;
		var timer2: Timer = new Timer(1000, c1++);
		var min: Number = 0;
		var delay: int = 0;
		var forma1: int = 0;
		var forma2: int = 0;
		var forma3: int = 0;
		var forma4: int = 0;
		var forma5: int = 0;
		var puntos: int = 0;

		var nombre: String;
		var tiempoj: String;

		var n: int = 0;
		var filasrec: int = 0;
		var filacompleta: Boolean = false;
		var filai: int = 0;
		var filaf: int = 0;
		var fila1: int = 0;
		var fila2: int = 0;
		var fila3: int = 0;
		var fila4: int = 0;
		var fila5: int = 0;
		var fila6: int = 0;
		var fila7: int = 0;
		var fila8: int = 0;
		var fila9: int = 0;
		var fila10: int = 0;
		var fila11: int = 0;
		var fila12: int = 0;
		var fila13: int = 0;
		var fila14: int = 0;
		var senal: String;
		var loss: int = 1;
		var nam: String;
		var points: Number;
		var tim: String;
		var nam2: String;
		var points2: Number;
		var tim2: String;
		var connection: LocalConnection = new LocalConnection();
		var colores: Array = new Array();

		public function Principal1() {
			connection.connect("cliente");
			connection.client = this;
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

			var move11: Tween = new Tween(name3, "x", Strong.easeInOut, name3.x - 1000, name3.x, 1, true);
			var alp: Tween = new Tween(alumnos, "alpha", Strong.easeInOut, 0, 1, 1, true);
			var alp2: Tween = new Tween(profesor, "alpha", Strong.easeInOut, 0, 1, 1, true);
			var alp3: Tween = new Tween(iti, "alpha", Strong.easeInOut, 0, 1, 1, true);

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

			var move17: Tween = new Tween(ofig, "y", Strong.easeInOut, ofig.y - 10, ofig.y, 3, true);
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
			connection.send("servidor", "esperar", difnum.text);
			gotoAndStop(3);
			fotograma3();
			puntos_txt.text = puntos + "";

		}

		function regresar(e: MouseEvent): void {
			gotoAndStop(1);
			portada();
			playbtn.addEventListener(MouseEvent.CLICK, fplay);
		}

		function dplus(e: MouseEvent): void {
			dificultadnum++;
			fdificultad();
			var mas: Tween = new Tween(dificultad, "alpha", Strong.easeInOut, 0, 1, 1.5, true);
		}

		function dminus(e: MouseEvent): void {
			dificultadnum--;
			fdificultad();
			var menos: Tween = new Tween(dificultad, "alpha", Strong.easeInOut, 0, 1, 1.5, true);
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
			//declaracion de los colores para aplicar a los bloques
			var Morado: ColorTransform = new ColorTransform();
			Morado.color = 0x9E01EE;
			var Naranja: ColorTransform = new ColorTransform();
			Naranja.color = 0xF0A001;
			var Amarillo: ColorTransform = new ColorTransform();
			Amarillo.color = 0xEBF301;
			var Celeste: ColorTransform = new ColorTransform();
			Celeste.color = 0x01F0EE;
			var Rojo: ColorTransform = new ColorTransform();
			Rojo.color = 0xFE0100;

			cuadro.visible = false;
			insertname_txt.visible = false;
			enternametxt.visible = false;
			youlosetxt.visible = false;
			okbtn.visible = false;

			var posY1: int = 0;
			var posY2: int = 0;
			var posY3: int = 0;
			var posY4: int = 0;
			var random: int = Math.random() * 4;
			var figuras: Array = new Array(figura1, figura2, figura3, figura4, figura5);
			var cuadros1: Array = new Array(c11, c12, c13, c14);
			var cuadros2: Array = new Array(c21, c22, c23, c24);
			var cuadros3: Array = new Array(c31, c32, c33, c34);
			var cuadros4: Array = new Array(c41, c42, c43, c44);
			var cuadros5: Array = new Array(c51, c52, c53, c54);
			for (figc = 0; figc < 4; figc++) {
				cuadros1[figc].transform.colorTransform = Morado;
			}
			for (figc = 0; figc < 4; figc++) {
				cuadros2[figc].transform.colorTransform = Naranja;
			}
			for (figc = 0; figc < 4; figc++) {
				cuadros3[figc].transform.colorTransform = Amarillo;
			}
			for (figc = 0; figc < 4; figc++) {
				cuadros4[figc].transform.colorTransform = Celeste;
			}
			for (figc = 0; figc < 4; figc++) {
				cuadros5[figc].transform.colorTransform = Rojo;
			}
			var mapa: Array = new Array(m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15, m16, m17, m18, m19, m20, m21, m22, m23, m24, m25, m26, m27, m28, m29, m30, m31, m32, m33, m34, m35, m36, m37, m38, m39, m40, m41, m42, m43, m44, m45, m46, m47, m48, m49, m50, m51, m52, m53, m54, m55, m56, m57, m58, m59, m60, m61, m62, m63, m64, m65, m66, m67, m68, m69, m70, m71, m72, m73, m74, m75, m76, m77, m78, m79, m80, m81, m82, m83, m84, m85, m86, m87, m88, m89, m90, m91, m92, m93, m94, m95, m96, m97, m98, m99, m100, m101, m102, m103, m104, m105, m106, m107, m108, m109, m110, m111, m112, m113, m114, m115, m116, m117, m118, m119, m120, m121, m122, m123, m124, m125, m126, m127, m128, m129, m130, m131, m132, m133, m134, m135, m136, m137, m138, m139, m140);
			for (var i: int = 0; i < 5; i++) {
				figuras[i].x = placefig.x;
				figuras[i].y = placefig.y + 1000;
			}

			//timer2 para el contador del tiempo
			timer2.addEventListener(TimerEvent.TIMER, tiempo2);
			timer2.start();
			var band: Boolean = false;
			var figuraant: Array = new Array;
			//funcion para realizar la animacion de la vista previa de la figura
			function fsig() {
				if (band == true) {
					trace(random);
					//la figura anterior es la siguiente figura en caer
					figuraant[1] = figuras[random];
					//el bloque que va a caer toma el random
					bloque = random;
					//se genera un nuevo random
					random = Math.random() * 5;
					//ciclo para que no se repita la misma figura
					while (figuras[random] == figuraant[1]) {
						random = Math.random() * 5;
					}
					//tweens para animacion del cambio
					var ida: Tween = new Tween(figuraant[1], "y", Strong.easeInOut, placefig.y, placefig.y - 100, 0.5, true);
					var desv: Tween = new Tween(figuraant[1], "alpha", Strong.easeInOut, 1, 0, 0.5, true);
					var ida2: Tween = new Tween(figuras[random], "y", Strong.easeInOut, placefig.y + 100, placefig.y, 0.5, true);
					var desv2: Tween = new Tween(figuras[random], "alpha", Strong.easeInOut, 0, 1, 0.5, true);
				} else {//condicion para el primer intento
					random = Math.random() * 5;
					bloque = random;
					trace(random);
					var ida3: Tween = new Tween(figuras[random], "y", Strong.easeInOut, placefig.y + 100, placefig.y, 0.5, true);
					var desv3: Tween = new Tween(figuras[random], "alpha", Strong.easeInOut, 0, 1, 0.5, true);
					band = true;
				}
			}

			for (j = 0; j < 140; j++) {//ciclo para poner invisibles los cuadros de la zona de juego
				mapa[j].visible = false;
			}

			fsig();//se realiza la vista previa

			//define cual bloque es el que va a caery se acomoda en sus coordenadas
			if (bloque == 0) {//el primer bloque
				c11.y = 100;
				c11.x = 180;
				c12.y = 100;
				c12.x = 220;
				c13.y = 100;
				c13.x = 260;
				c14.y = 60;
				c14.x = 220;
			}
			if (bloque == 1) {//segundo bloque
				c21.y = 100;
				c21.x = 180;
				c22.y = 100;
				c22.x = 220;
				c23.y = 100;
				c23.x = 260;
				c24.y = 60;
				c24.x = 260;
			}
			if (bloque == 2) {//3er bloque
				c31.y = 100;
				c31.x = 180;
				c32.y = 100;
				c32.x = 220;
				c33.y = 60;
				c33.x = 180;
				c34.y = 60;
				c34.x = 220;
			}
			if (bloque == 3) {//4to bloque
				c41.y = 100;
				c41.x = 180;
				c42.y = 100;
				c42.x = 220;
				c43.y = 100;
				c43.x = 260;
				c44.y = 100;
				c44.x = 300;
			}
			if (bloque == 4) {//5to bloque
				c51.y = 60;
				c51.x = 180;
				c52.y = 60;
				c52.x = 220;
				c53.y = 100;
				c53.x = 220;
				c54.y = 100;
				c54.x = 260;
			}

			var cont1: int;
			//se determina la velocidad del bloque en base a la dificultad
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
			//variables para los ciclos
			var j: int = 0;
			var k: int = 0;
			var l: int = 0;
			var m: int = 0;

			//funcion para ordenar el bloque para la siguiente caida
			function ordenar() {
				if (bloque == 0) {
					c11.y = 100;
					c11.x = 180;
					c12.y = 100;
					c12.x = 220;
					c13.y = 100;
					c13.x = 260;
					c14.y = 60;
					c14.x = 220;
				}
				if (bloque == 1) {
					c21.y = 100;
					c21.x = 180;
					c22.y = 100;
					c22.x = 220;
					c23.y = 100;
					c23.x = 260;
					c24.y = 60;
					c24.x = 260;
				}
				if (bloque == 2) {
					c31.y = 100;
					c31.x = 180;
					c32.y = 100;
					c32.x = 220;
					c33.y = 60;
					c33.x = 180;
					c34.y = 60;
					c34.x = 220;
				}
				if (bloque == 3) {
					c41.y = 100;
					c41.x = 180;
					c42.y = 100;
					c42.x = 220;
					c43.y = 100;
					c43.x = 260;
					c44.y = 100;
					c44.x = 300;
				}
				if (bloque == 4) {
					c51.y = 60;
					c51.x = 180;
					c52.y = 60;
					c52.x = 220;
					c53.y = 100;
					c53.x = 220;
					c54.y = 100;
					c54.x = 260;
				}

			}
			
			//funcion para sacar figura cuando colisiona
			function sacarfigura() {
				for (l = 0; l < 4; l++) {
					cuadros1[l].x = -450;
					cuadros2[l].x = -450;
					cuadros3[l].x = -450;
					cuadros4[l].x = -450;
					cuadros5[l].x = -450;
				}
			}

			//funcion para eliminar lineas
			function eliminarln() {
				//se cuenta el numero de bloques que se encuentran visibles en cada fila
				for (n = 0; n < 10; n++) {
					if (mapa[n].visible == true) {
						fila1++;
					}
				}
				for (n = 10; n < 20; n++) {
					if (mapa[n].visible == true) {
						fila2++;
					}
				}
				for (n = 20; n < 30; n++) {
					if (mapa[n].visible == true) {
						fila3++;
					}
				}
				for (n = 30; n < 40; n++) {
					if (mapa[n].visible == true) {
						fila4++;
					}
				}
				for (n = 40; n < 50; n++) {
					if (mapa[n].visible == true) {
						fila5++;
					}
				}
				for (n = 50; n < 60; n++) {
					if (mapa[n].visible == true) {
						fila6++;
					}
				}
				for (n = 60; n < 70; n++) {
					if (mapa[n].visible == true) {
						fila7++;
					}
				}
				for (n = 70; n < 80; n++) {
					if (mapa[n].visible == true) {
						fila8++;
					}
				}
				for (n = 80; n < 90; n++) {
					if (mapa[n].visible == true) {
						fila9++;
					}
				}
				for (n = 90; n < 100; n++) {
					if (mapa[n].visible == true) {
						fila10++;
					}
				}
				for (n = 100; n < 110; n++) {
					if (mapa[n].visible == true) {
						fila11++;
					}
				}
				for (n = 110; n < 120; n++) {
					if (mapa[n].visible == true) {
						fila12++;
					}
				}
				for (n = 120; n < 130; n++) {
					if (mapa[n].visible == true) {
						fila13++;
					}
				}
				for (n = 130; n < 140; n++) {
					if (mapa[n].visible == true) {
						fila14++;
					}
				}

				//una vez contados se verificar si una fila esta llena
				if (fila1 == 10) {
					for (n = 0; n < 10; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					//se aumenta el contador filasrec para saber cuantas filas se completaron
					filasrec++;
					filai = 10;
				}

				if (fila2 == 10) {
					for (n = 10; n < 20; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 20;
				}
				if (fila3 == 10) {
					for (n = 20; n < 30; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 30;
				}
				if (fila4 == 10) {
					for (n = 30; n < 40; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 40;
				}
				if (fila5 == 10) {
					for (n = 40; n < 50; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 50;
				}
				if (fila6 == 10) {
					for (n = 50; n < 60; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 60;
				}
				if (fila7 == 10) {
					for (n = 60; n < 70; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 70;
				}
				if (fila8 == 10) {
					for (n = 70; n < 80; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 80;
				}
				if (fila9 == 10) {
					for (n = 80; n < 90; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 90;
				}
				if (fila10 == 10) {
					for (n = 90; n < 100; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 100;
				}
				if (fila11 == 10) {
					for (n = 100; n < 110; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 110;
				}
				if (fila12 == 10) {
					for (n = 110; n < 120; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 120;
				}
				if (fila13 == 10) {
					for (n = 120; n < 130; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 130;
				}
				if (fila14 == 10) {
					for (n = 130; n < 140; n++) {
						mapa[n].visible = false;
					}
					filacompleta = true;
					filasrec++;
					filai = 140;
				}
				//se inicializar las variables de forma para que no sigan esten normales en su siguiente caida
				forma1 = 0;
				forma2 = 0;
				forma3 = 0;
				forma4 = 0;
				forma5 = 0;


				//se declaran a 0 caundo se terminaron de contar las filas para volver a contarlas de nuevo
				fila1 = 0;
				fila2 = 0;
				fila3 = 0;
				fila4 = 0;
				fila5 = 0;
				fila6 = 0;
				fila7 = 0;
				fila8 = 0;
				fila9 = 0;
				fila10 = 0;
				fila11 = 0;
				fila12 = 0;
				fila13 = 0;
				fila14 = 0;
				//se verifica si hubo una linea eliminada
				if (filasrec > 0) {
					//si es verdadero se recorren las filas
					recorrerfilas();
					//se aumenta el contador de puntos.
					puntos = puntos + (50 * filasrec);
					puntos_txt.text = puntos + "";
				}
				filasrec = 0;
			}

			function recorrerfilas() {
				for (filai; filai < 140; filai++) {
					//se el bloque esta visible se recorre
					if (mapa[filai].visible == true) {
						//se recorre al bloque de abajo
						mapa[filai - (10 * filasrec)].visible = true;
						//se le asigna el color a la fila recorrida
						if(colores[filai]==1){
							mapa[filai - (10 * filasrec)].transform.colorTransform = Morado;
						}
						if(colores[filai]==2){
							mapa[filai - (10 * filasrec)].transform.colorTransform = Naranja;
						}
						if(colores[filai]==3){
							mapa[filai - (10 * filasrec)].transform.colorTransform = Amarillo;
						}
						if(colores[filai]==4){
							mapa[filai - (10 * filasrec)].transform.colorTransform = Celeste;
						}
						if(colores[filai]==5){
							mapa[filai - (10 * filasrec)].transform.colorTransform = Rojo;
						//se pone invisible el bloque que se recorrio 
						mapa[filai].visible = false;
						}
					}
				}
			}

			var col: int = 0;

			timer.addEventListener(TimerEvent.TIMER, tiempo);
function tiempo(tiempoevent: TimerEvent): void {
				if (posY1 == 620 || posY2 == 620 || posY3 == 620 || posY4 == 620) {
					for (k = 0; k < 4; k++) {
						for (j = 0; j < 130; j++) {
							if (cuadros1[k].y == mapa[j].y && cuadros1[k].x == mapa[j].x) {
								mapa[j].visible = true;
								mapa[j].transform.colorTransform = Morado;
								colores[j]=1
							}
							if (cuadros2[k].y == mapa[j].y && cuadros2[k].x == mapa[j].x) {
								mapa[j].visible = true;
								mapa[j].transform.colorTransform = Naranja;
								colores[j]=2
							}
							if (cuadros3[k].y == mapa[j].y && cuadros3[k].x == mapa[j].x) {
								mapa[j].visible = true;
								mapa[j].transform.colorTransform = Amarillo;
								colores[j]=3
							}
							if (cuadros4[k].y == mapa[j].y && cuadros4[k].x == mapa[j].x) {
								mapa[j].visible = true;
								mapa[j].transform.colorTransform = Celeste;
								colores[j]=4
							}
							if (cuadros5[k].y == mapa[j].y && cuadros5[k].x == mapa[j].x) {
								mapa[j].visible = true;
								mapa[j].transform.colorTransform = Rojo;
								colores[j]=5
							}
						}
					}
					sacarfigura();
					fsig();
					//bloque = figuraant[1];

					ordenar();
					eliminarln();
					posY1 = 0;
					posY2 = 0;
					posY3 = 0;
					posY4 = 0;
				} else {
					if (bloque == 0) {
						c11.y += 40;
						c12.y += 40;
						c13.y += 40;
						c14.y += 40;
						posY1 = c11.y;
						posY2 = c12.y;
						posY3 = c13.y;
						posY4 = c14.y;
					}
					if (bloque == 1) {
						c21.y += 40;
						c22.y += 40;
						c23.y += 40;
						c24.y += 40;
						posY1 = c21.y;
						posY2 = c22.y;
						posY3 = c23.y;
						posY4 = c24.y;
					}
					if (bloque == 2) {
						c31.y += 40;
						c32.y += 40;
						c33.y += 40;
						c34.y += 40;
						posY1 = c31.y;
						posY2 = c32.y;
						posY3 = c33.y;
						posY4 = c34.y;
					}
					if (bloque == 3) {
						c41.y += 40;
						c42.y += 40;
						c43.y += 40;
						c44.y += 40;
						posY1 = c41.y;
						posY2 = c42.y;
						posY3 = c43.y;
						posY4 = c44.y;
					}
					if (bloque == 4) {
						c51.y += 40;
						c52.y += 40;
						c53.y += 40;
						c54.y += 40;
						posY1 = c51.y;
						posY2 = c52.y;
						posY3 = c53.y;
						posY4 = c54.y;
					}
				}



				for (k = 0; k < 4; k++) {
					if (col >= 1) {
						col = 0;
						break;
					}
					for (j = 0; j < 130; j++) {
						if (cuadros1[k].y == mapa[j].y && cuadros1[k].x == mapa[j].x && mapa[j].visible == true) {
							col++;
							cuadros1[0].y -= 40;
							cuadros1[1].y -= 40;
							cuadros1[2].y -= 40;
							cuadros1[3].y -= 40;
							for (l = 0; l < 4; l++) {
								for (m = 0; m < 130; m++) {
									if (cuadros1[l].y == mapa[m].y && cuadros1[l].x == mapa[m].x) {
										mapa[m].visible = true;
										mapa[m].transform.colorTransform = Morado;
										colores[m]=1;
									}
								}
							}

							for (l = 0; l < 4; l++) {
								for (m = 120; m < 130; m++) {
									if (cuadros1[l].y == mapa[m].y && cuadros1[l].x == mapa[m].x) {
										stage.removeEventListener(Event.ENTER_FRAME, movimiento);
										stage.removeEventListener(KeyboardEvent.KEY_DOWN, press);
										stage.removeEventListener(KeyboardEvent.KEY_UP, soltar);
										timer.stop();
										timer2.stop();
										timer3.stop();
										cuadro.visible = true;
										insertname_txt.visible = true;
										enternametxt.visible = true;
										youlosetxt.visible = true;
										okbtn.visible = true;
										okbtn.addEventListener(MouseEvent.CLICK, ft4);
									}
								}
							}

							sacarfigura();
							fsig();
							ordenar();
							eliminarln();
							break;
						}
						if (cuadros2[k].y == mapa[j].y && cuadros2[k].x == mapa[j].x && mapa[j].visible == true) {
							col++;
							cuadros2[0].y -= 40;
							cuadros2[1].y -= 40;
							cuadros2[2].y -= 40;
							cuadros2[3].y -= 40;
							for (l = 0; l < 4; l++) {
								for (m = 0; m < 130; m++) {
									if (cuadros2[l].y == mapa[m].y && cuadros2[l].x == mapa[m].x) {
										mapa[m].visible = true;
										mapa[m].transform.colorTransform = Naranja;
										colores[m]=2;
									}
								}
							}

							for (l = 0; l < 4; l++) {
								for (m = 120; m < 130; m++) {
									if (cuadros2[l].y == mapa[m].y && cuadros2[l].x == mapa[m].x) {
										stage.removeEventListener(Event.ENTER_FRAME, movimiento);
										stage.removeEventListener(KeyboardEvent.KEY_DOWN, press);
										stage.removeEventListener(KeyboardEvent.KEY_UP, soltar);
										timer.stop();
										timer2.stop();
										timer3.stop();
										cuadro.visible = true;
										insertname_txt.visible = true;
										enternametxt.visible = true;
										youlosetxt.visible = true;
										okbtn.visible = true;
										okbtn.addEventListener(MouseEvent.CLICK, ft4);
									}
								}
							}

							sacarfigura();
							fsig();
							ordenar();
							eliminarln();
							break;
						}
						if (cuadros3[k].y == mapa[j].y && cuadros3[k].x == mapa[j].x && mapa[j].visible == true) {
							col++;
							cuadros3[0].y -= 40;
							cuadros3[1].y -= 40;
							cuadros3[2].y -= 40;
							cuadros3[3].y -= 40;
							for (l = 0; l < 4; l++) {
								for (m = 0; m < 130; m++) {
									if (cuadros3[l].y == mapa[m].y && cuadros3[l].x == mapa[m].x) {
										mapa[m].visible = true;
										mapa[m].transform.colorTransform = Amarillo;
										colores[m]=3;
									}
								}
							}

							for (l = 0; l < 4; l++) {
								for (m = 120; m < 130; m++) {
									if (cuadros3[l].y == mapa[m].y && cuadros3[l].x == mapa[m].x) {
										stage.removeEventListener(Event.ENTER_FRAME, movimiento);
										stage.removeEventListener(KeyboardEvent.KEY_DOWN, press);
										stage.removeEventListener(KeyboardEvent.KEY_UP, soltar);
										timer.stop();
										timer2.stop();
										timer3.stop();
										cuadro.visible = true;
										insertname_txt.visible = true;
										enternametxt.visible = true;
										youlosetxt.visible = true;
										okbtn.visible = true;
										okbtn.addEventListener(MouseEvent.CLICK, ft4);
									}
								}
							}

							sacarfigura();
							fsig();
							ordenar();
							eliminarln();
							break;
						}
						if (cuadros4[k].y == mapa[j].y && cuadros4[k].x == mapa[j].x && mapa[j].visible == true) {
							col++;
							cuadros4[0].y -= 40;
							cuadros4[1].y -= 40;
							cuadros4[2].y -= 40;
							cuadros4[3].y -= 40;
							for (l = 0; l < 4; l++) {
								for (m = 0; m < 130; m++) {
									if (cuadros4[l].y == mapa[m].y && cuadros4[l].x == mapa[m].x) {
										mapa[m].visible = true;
										mapa[m].transform.colorTransform = Celeste;
										colores[m]=4;
									}
								}
							}

							for (l = 0; l < 4; l++) {
								for (m = 120; m < 130; m++) {
									if (cuadros4[l].y == mapa[m].y && cuadros4[l].x == mapa[m].x) {
										stage.removeEventListener(Event.ENTER_FRAME, movimiento);
										stage.removeEventListener(KeyboardEvent.KEY_DOWN, press);
										stage.removeEventListener(KeyboardEvent.KEY_UP, soltar);
										timer.stop();
										timer2.stop();
										timer3.stop();
										cuadro.visible = true;
										insertname_txt.visible = true;
										enternametxt.visible = true;
										youlosetxt.visible = true;
										okbtn.visible = true;
										okbtn.addEventListener(MouseEvent.CLICK, ft4);
									}
								}
							}

							sacarfigura();
							fsig();
							ordenar();
							eliminarln();
							break;
						}
						if (cuadros5[k].y == mapa[j].y && cuadros5[k].x == mapa[j].x && mapa[j].visible == true) {
							col++;
							cuadros5[0].y -= 40;
							cuadros5[1].y -= 40;
							cuadros5[2].y -= 40;
							cuadros5[3].y -= 40;
							for (l = 0; l < 4; l++) {
								for (m = 0; m < 130; m++) {
									if (cuadros5[l].y == mapa[m].y && cuadros5[l].x == mapa[m].x) {
										mapa[m].visible = true;
										mapa[m].transform.colorTransform = Rojo;
										colores[m]=5;
									}
								}
							}

							for (l = 0; l < 4; l++) {
								for (m = 120; m < 130; m++) {
									if (cuadros5[l].y == mapa[m].y && cuadros5[l].x == mapa[m].x) {
										stage.removeEventListener(Event.ENTER_FRAME, movimiento);
										stage.removeEventListener(KeyboardEvent.KEY_DOWN, press);
										stage.removeEventListener(KeyboardEvent.KEY_UP, soltar);
										timer.stop();
										timer2.stop();
										timer3.stop();
										cuadro.visible = true;
										insertname_txt.visible = true;
										enternametxt.visible = true;
										youlosetxt.visible = true;
										okbtn.visible = true;
										okbtn.addEventListener(MouseEvent.CLICK, ft4);
									}
								}
							}

							sacarfigura();
							fsig();
							ordenar();
							eliminarln();
							break;
						}
					}
				}
			}


			function ft4(event: MouseEvent): void {
				if (insertname_txt.text == "") {
					trace("no se inserto nombre");
				} else {
					if (loss != 1) {
						nombre = insertname_txt.text + "";
						tiempoj = time.text + "";
						gotoAndStop(4);
						connection.send("servidor", "recibirdatos", nombre, puntos, tiempoj);
						if (loss > puntos) {
							names_txt.text = nam2 + "\n" + nombre + "\n";
							points_txt.text = loss + "\n" + puntos + "\n";
							times_txt.text = tim2 + "\n" + tiempoj + "\n";
						} else {
							names_txt.text = nombre + "\n" + nam2 + "\n";
							points_txt.text = puntos + "\n" + loss + "\n";
							times_txt.text = tiempoj + "\n" + tim2 + "\n";
						}
					} else {
						nombre = insertname_txt.text + "";
						tiempoj = time.text + "";
						connection.send("servidor", "recibirdatos1", nombre, puntos, tiempoj);
						/*timer.stop();
					timer.removeEventListener(TimerEvent.TIMER, tiempo);
					timer2.stop();
					timer2.removeEventListener(TimerEvent.TIMER, tiempo2);
					timer3.stop();
					timer3.removeEventListener(TimerEvent.TIMER, tiempo);*/
						gotoAndStop(4);
						names_txt.text = nombre + "\n";
						points_txt.text = puntos + "\n";
						times_txt.text = tiempoj + "\n";
					}
				}
			}


			stage.addEventListener(Event.ENTER_FRAME, movimiento);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, press);
			stage.addEventListener(KeyboardEvent.KEY_UP, soltar);
			var izq: Boolean = false;
			var der: Boolean = false;
			var arr: Boolean = false;
			var abaj: Boolean = false;



			//funcion presionado
			function press(event: KeyboardEvent): void {
				//determinar la tecla izquierda ascii no 37
				if (event.keyCode == 37) {
					izq = true;
					delay++;
				} else {
					if (event.keyCode == 38) {
						arr = true;
						delay++;
					} else {
						if (event.keyCode == 39) {
							der = true;
							delay++;
						} else {
							if (event.keyCode == 40) {
								abaj = true;
							}
						}
					}
				}
			}

			//funcion para soltar las teclas
			function soltar(event: KeyboardEvent): void {
				if (event.keyCode == 37) {
					izq = false;
					delay = 0;
				} else {
					if (event.keyCode == 38) {
						arr = false;
						delay = 0;
					} else {
						if (event.keyCode == 39) {
							der = false;
							delay = 0;
						} else {
							if (event.keyCode == 40) {
								abaj = false;
							}
						}
					}
				}
			}
			var cont2: int = 0;
			var vx: int = 0;
			var vx2: int = 0;
			var timer3: Timer = new Timer(100, cont2++);

			timer3.addEventListener(TimerEvent.TIMER, tiempo);
			//timer2.start();

			function movimiento(event: Event): void {
				if (abaj == true) {
					if (vx == 0) {
						timer.stop();
						timer3.start();
						vx = 1;
						vx2 = 0;
					}
				} else {
					if (vx2 == 0) {
						timer3.stop();
						timer.start();
						vx2 = 1;
						vx = 0;
					}

				}
				if (arr == true) {
					if (delay >= 1) {
						delay = 0;

						if (bloque == 0) {
							forma1++;
							if (forma1 == 4) {
								forma1 = 0;
							}
							if (forma1 == 0) {
								c14.y -= 80;
								c13.x += 40;
								c13.y += 40;
							}
							if (forma1 == 1) {
								c11.y += 40;
								c11.x += 40;
							}
							if (forma1 == 2) {
								c11.y -= 40;
								c11.x -= 40;
								c14.y += 80;
							}
							if (forma1 == 3) {
								c13.y -= 40;
								c13.x -= 40;
							}
						}
						if (bloque == 1) {
							forma2++;
							if (forma2 == 4) {
								forma2 = 0;
							}
							if (forma2 == 0) {
								c24.x += 40;
								c23.x += 40;
								c23.y -= 40;
								c21.y += 40;
							}
							if (forma2 == 1) {
								c24.y += 80;
								c24.x -= 40;
								c23.y += 40;
								c21.y -= 40;
								c21.x += 40;
							}
							if (forma2 == 2) {
								c24.x -= 40;
								c23.y -= 40;
								c21.y += 40;
								c21.x -= 40;
							}
							if (forma2 == 3) {
								c23.y += 40;
								c23.x -= 40;
								c24.y -= 80;
								c24.x += 40;
								c21.y -= 40;
							}
						}
						if (bloque == 2) {

						}
						if (bloque == 3) {
							forma4++;
							if (forma4 == 2) {
								forma4 = 0;
							}
							if (forma4 == 0) {
								c44.y -= 40;
								c44.x += 40;
								c42.y += 40;
								c42.x -= 40;
								c41.y += 80;
								c41.x -= 80;
							}
							if (forma4 == 1) {
								c44.y += 40;
								c44.x -= 40;
								c42.y -= 40;
								c42.x += 40;
								c41.y -= 80;
								c41.x += 80;
							}

						}
						if (bloque == 4) {
							forma5++;
							if (forma5 == 2) {
								forma5 = 0;
							}
							if (forma5 == 0) {
								c51.x -= 40;
								c52.x -= 40;
								c54.y += 80;
							}
							if (forma5 == 1) {
								c51.x += 40;
								c52.x += 40;
								c54.y -= 80;
							}

						}
					}
				}


				if (delay >= 1) {
					delay = 0;
					if (bloque == 0) {
						if (izq == true && c11.x > 60) {
							c11.x -= 40;
							c12.x -= 40;
							c13.x -= 40;
							c14.x -= 40;
							for (k = 0; k < 4; k++) {
								for (j = 0; j < 130; j++) {
									if (cuadros1[k].x == mapa[j].x && cuadros1[k].y == mapa[j].y && mapa[j].visible == true) {
										c11.x += 40;
										c12.x += 40;
										c13.x += 40;
										c14.x += 40;
									}
								}
							}
						} else {
							if (der == true && c13.x < 420) {
								c11.x += 40;
								c12.x += 40;
								c13.x += 40;
								c14.x += 40;
								for (k = 0; k < 4; k++) {
									for (j = 0; j < 130; j++) {
										if (cuadros1[k].x == mapa[j].x && cuadros1[k].y == mapa[j].y && mapa[j].visible == true) {
											c11.x -= 40;
											c12.x -= 40;
											c13.x -= 40;
											c14.x -= 40;
										}
									}
								}
							}
						}


					}
					if (bloque == 1) {
						if (izq == true && c21.x > 60) {
							c21.x -= 40;
							c22.x -= 40;
							c23.x -= 40;
							c24.x -= 40;
							for (k = 0; k < 4; k++) {
								for (j = 0; j < 130; j++) {
									if (cuadros2[k].x == mapa[j].x && cuadros2[k].y == mapa[j].y && mapa[j].visible == true) {
										c21.x += 40;
										c22.x += 40;
										c23.x += 40;
										c24.x += 40;
									}
								}
							}

						} else {
							if (der == true && c23.x < 420) {
								c21.x += 40;
								c22.x += 40;
								c23.x += 40;
								c24.x += 40;
								for (k = 0; k < 4; k++) {
									for (j = 0; j < 130; j++) {
										if (cuadros2[k].x == mapa[j].x && cuadros2[k].y == mapa[j].y && mapa[j].visible == true) {
											c21.x -= 40;
											c22.x -= 40;
											c23.x -= 40;
											c24.x -= 40;
										}
									}
								}
							}
						}
					}
					if (bloque == 2) {
						if (izq == true && c31.x > 60) {
							c31.x -= 40;
							c32.x -= 40;
							c33.x -= 40;
							c34.x -= 40;
							for (k = 0; k < 4; k++) {
								for (j = 0; j < 130; j++) {
									if (cuadros3[k].x == mapa[j].x && cuadros3[k].y == mapa[j].y && mapa[j].visible == true) {
										c31.x += 40;
										c32.x += 40;
										c33.x += 40;
										c34.x += 40;
									}
								}
							}

						} else {
							if (der == true && c33.x < 380) {
								c31.x += 40;
								c32.x += 40;
								c33.x += 40;
								c34.x += 40;
								for (k = 0; k < 4; k++) {
									for (j = 0; j < 130; j++) {
										if (cuadros3[k].x == mapa[j].x && cuadros3[k].y == mapa[j].y && mapa[j].visible == true) {
											c31.x -= 40;
											c32.x -= 40;
											c33.x -= 40;
											c34.x -= 40;
										}
									}
								}
							}
						}
					}
					if (bloque == 3) {
						if (izq == true && c41.x > 60) {
							c41.x -= 40;
							c42.x -= 40;
							c43.x -= 40;
							c44.x -= 40;
							for (k = 0; k < 4; k++) {
								for (j = 0; j < 130; j++) {
									if (cuadros4[k].x == mapa[j].x && cuadros4[k].y == mapa[j].y && mapa[j].visible == true) {
										c41.x += 40;
										c42.x += 40;
										c43.x += 40;
										c44.x += 40;
									}
								}
							}

						} else {
							if (der == true && c44.x < 420) {
								c41.x += 40;
								c42.x += 40;
								c43.x += 40;
								c44.x += 40;
								for (k = 0; k < 4; k++) {
									for (j = 0; j < 130; j++) {
										if (cuadros4[k].x == mapa[j].x && cuadros4[k].y == mapa[j].y && mapa[j].visible == true) {
											c41.x -= 40;
											c42.x -= 40;
											c43.x -= 40;
											c44.x -= 40;
										}
									}
								}

							}
						}
					}
					if (bloque == 4) {
						if (izq == true && c51.x > 60) {
							c51.x -= 40;
							c52.x -= 40;
							c53.x -= 40;
							c54.x -= 40;
							for (k = 0; k < 4; k++) {
								for (j = 0; j < 130; j++) {
									if (cuadros5[k].x == mapa[j].x && cuadros5[k].y == mapa[j].y && mapa[j].visible == true) {
										c51.x += 40;
										c52.x += 40;
										c53.x += 40;
										c54.x += 40;
									}
								}
							}

						} else {
							if (der == true && c54.x < 420) {
								c51.x += 40;
								c52.x += 40;
								c53.x += 40;
								c54.x += 40;
								for (k = 0; k < 4; k++) {
									for (j = 0; j < 130; j++) {
										if (cuadros5[k].x == mapa[j].x && cuadros5[k].y == mapa[j].y && mapa[j].visible == true) {
											c51.x -= 40;
											c52.x -= 40;
											c53.x -= 40;
											c54.x -= 40;
										}
									}
								}
							}
						}
					}
				}

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
		public function recibirdatos2(nam, points, tim): void {
			loss = points;
			nam2 = nam;
			tim2 = tim;
		}
		public function recibirdatos(nam, points, tim): void {
			if (points > puntos) {
				names_txt.text = nam + "\n" + nombre + "\n";
				points_txt.text = points + "\n" + puntos + "\n";
				times_txt.text = tim + "\n" + tiempoj + "\n";
			} else {
				names_txt.text = nombre + "\n" + nam + "\n";
				points_txt.text = puntos + "\n" + points + "\n";
				times_txt.text = tiempoj + "\n" + tim + "\n";
			}
		}

	}


}