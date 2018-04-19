/// @description Insert description here
// You can write your code in this editor
/*
if dropDown {
	yoff = Approach(yoff,0,15);
	if yoff == 0 {
		if donShake {
			donShake--;
			shakeAmt = Approach(shakeAmt1,0,6/15);
			//xoff = random_range(-shakeAmt1,shakeAmt1);
			//yoff = random_range(-shakeAmt1,shakeAmt1);
		}
		runyoff = Approach(runyoff,0,15);
		if runyoff == 0 {
			dropDown = false;
		}
	}
} else {
	if !idle {
		if preIdleShake {
			preIdleShake--;
			runxoff = random_range(-3,3);
			runyoff = random_range(-3,3);
		} else {
			idle = true;
		}
	}
}
*/
if idle {
	t = (t+inc) mod 360;
	var shift = amp*sin(degtorad(t));
	xoff = 4*sin(degtorad(t+45 mod 360));
	yoff = 2*cos(degtorad(t+45 mod 360));

	var shakex = 0;
	var shakey = 0;
	shakeT = (shakeT+1) mod 2;
	if shakeT == 1 {
		shakex += random_range(-1,1);
		shakey += random_range(-1,1);
	}
	runxoff = 2*cos(degtorad(t))//+shakex;
	runyoff = 3*sin(degtorad(t))//+shakey;
	
}