		
//:	Test_12

SynthDef(\kick, { | dur = 0.15, atk = 0.005, amp = 1, fb = 0, rel = 0.03625, out = 0 |
	
	Out.ar([out], SinOscFB.ar(
		EnvGen.ar( Env(
			\freq_l.kr([2960, 70, 0]),
			\freq_d.kr([0.07, 0.2]),
			\freq_c.kr([-13]),
		) ), fb,
		amp * EnvGen.ar(
			Env.perc( atk, rel, curve: \amp_c.kr([-1, 6])),
			doneAction: 2
		);	
	))
}).add;

SynthDef(\kick2, { | rel = 0.15, atk = 0.005, amp = 1, fb = 0, posp = 0, out = 0 |
	
	Out.ar(out, Pan2.ar(SinOscFB.ar(
		EnvGen.ar( Env(
			\freq_l.kr([2960, 70, 90]),
			\freq_d.kr([0.07, 0.2]),
			\freq_c.kr([-13, -1]),
		) ), fb,
		amp * EnvGen.ar(
			Env.perc( atk, rel - atk/3, curve: \amp_c.kr([-1, 6])),
			doneAction: 2
		);	
	), posp, 1))
}).add;


//:

Pdef(\xwsst, 

	Ppar([
	
		Pbind(*[
			\instrument, \kick,
			\dur, Pseq([Pseq([1/2, 1/4, 1/4, 1/2, Pseq([1/4], 3), 1/4], 10)]/2, inf),
			\amp, 0.8 * Pseq([
				
				Pseq([1], 16),
				Pseq([0.8, 1], 8),  
				Pseq([1], 16),
				Pseq([0.8, 0.8, 0.9, 1]*0, 8)
			
			], inf) * 0.8,
			\freq_l, Pseq([
				`[1260,60,110],
				`[0, 0], `[0, 0], 
				`[8360,60,120], `[4360,60,120], `[0, 0], `[4360,60,120], `[0, 0],
				`[1260,60,110], `[0, 0], `[8360,60,120], `[0, 0] 
			],inf),
			\freq_d, Pseq([`[0.07, 0.2]], inf),
			\fb, Pseq([0], inf),
			\out, 0
		]),
	
		
		Pbind(*[
			\instrument, \kick,
			\dur, Pseq([Pseq([1/2, 1/4, 1/4, 1/2, Pseq([1/8], 3), 1/8], 10)]*2, inf),
			\amp, 0.6 * Pseq([
				
				Pseq([1], 16),
				Pseq([0.8, 1], 8),  
				Pseq([1], 16),
				Pseq([0.8, 0.8, 0.9, 1], 8)
			
			], inf) * 0.8,
			\freq_l, Pseq([
				
				[ [1260, 90, 110], [2260, 90, 110]] ,
/*				

				`[0, 0, 0], `[0, 0, 0], 
				`[8360,60,120], `[4360,60,120], `[0, 0, 0], `[4360,60,120], `[0, 0, 0],
				`[1260,60,110], `[0, 0, 0], `[8360,60,120], `[0, 0, 0] 
*/			],inf),
			\freq_d, Pseq([ `[0.07, 0.02] ], inf),
			\fb, Pseq([0], inf),
			\out, 1
		]),
		
		Pbind(*[
			\instrument, \kick,
			\dur, Pseq([1/8, 1/4], inf),
			\amp, 0.7 * Pseq([
			
				Pseq([1, 0], 16),
				Pseq([0.8, 1], 8),  
				Pseq([1], 10),
				Pseq([1, 0.8, 0.5, 1], 10)
			
			], inf) * 0.8,
			\freq_l, Pseq([
			
				`[1260, 60, 110],
			
			],inf),
			\freq_d, Pseq([ [[0.07, 0.2], [0.1, 0.2]] ], inf),
			\fb, Pseq([0], inf),
			\out, 2		
		]),
	
		Pbind(*[
			\instrument, \kick,
			\dur, Pseq([1/8], inf),
			\amp, 0.6 * Pseq([
			
				Pseq([1, 0.5], 2),
				Pseq([0], 8),  
				Pseq([1], 5),
				Pseq([0], 10),
				Pseq([1, 1, 1, 1], 2)
			
			], inf) * 0.8,
			\atk, Pseq([0.02, 0.05, 0.01], inf), 
			\freq_l, Pseq([
			
				[[460, 60, 110], [260, 60, 110]],
			
			],inf),
			\freq_d, Pseq([ [[0.07, 0.2], [0.1, 0.2], [0.001, 1]] ], inf),
			\fb, Pseq([ [0, 1000], [10, 2000], [0, 200], [1, 1200] ], inf),
			\out, 3		
		]),
		
		
		Pbind(*[
			\instrument, \kick,
			\dur, Pseq([1/8], inf),
			\amp, 0.7 * Pseq([
			
				Pseq([1, 0.5], 2),
				Pseq([0], 8),  
				Pseq([1], 5),
				Pseq([0], 10),
				Pseq([1, 1, 1, 1], 2)
			
			], inf) * 0.8,
			//\atk, Pseq([0.02, 0.05, 0.001], inf), 
			\freq_l, Pseq([
			
				[ [4060, 600, 110], [2060, 600, 110] ],
			
			],inf),
			\freq_d, Pseq([ [ [0.07, 0.2], [1, 0.2] ] ], inf),
			\fb, Pseq([ [0, 10], [0, 200], [100, 200], [1, 1200] ], inf),
			\out, 4		
		]),
		
		Pbind(*[
			\instrument, \kick,
			\dur, Pseq([1/2], inf),
			\amp, 0*0.07 * Pseq([
			
				Pseq([1], 1),
				Pseq([0], 2),  
				Pseq([0], 2),
				Pseq([0], 3),
				Pseq([0], 2)
			
			], inf) * 0.8,
			\atk, 10,
			\rel, 2,
			\freq_l, Pseq([
			
				//[10060, 100, 110],
				
//				[1060, 600, 110],
				
				[[460, 460, 410]/*, [260, 600, 110], [2060, 6000, 110], [46, 60, 110], [160, 60, 110], [260, 6000, 110]*/]
			
			],inf),
			\freq_d, Pseq([ [[0.01, 200], [1000, 2]] ], inf),
			\fb, Pseq([ [ 0.2, 1000.3, 0 ] ], inf), //auto apo 100.3 to pigaino 0.3 gamato!
			\out, 5		
		]),

		Pbind(*[
			\instrument, \kick,
			\dur, Pseq([1/8], inf),
			\amp, 0.5 * Pseq([
			 
				Pseq([1], 1),
				Pseq([0], 2),  
				Pseq([1], 8),
				Pseq([0], 3),
				Pseq([1], 2)
			
			], inf) * 0.8,
			\atk, 0.002,
			\freq_l, Pseq([
			
				[ [4060, 60, 110], [260, 60, 110] ],
				
				[ [460, 60, 110], [260, 60, 110] ],
//				[[460, 600, 110], [260, 60, 110]],
				
			],inf),
			\freq_d, Pseq([ [  [0.1, 0.1], [0.1, 2] ] ], inf),
			\fb, Pseq([ [100, 200] ], inf),
			\out, 6		
		]),

		
////////////////////////
//===================================	
	
		//Midenisa ta kick2
		Pbind(*[
			\instrument, \kick2,
			\dur, Pseq([Pseq([1/2, 1/4, 1/4, 1/2, Pseq([1/8], 3), 1/8], 10)], inf),
			\amp, 0.07 * Pseq([
				Pseq([1], 16),
				Pseq([0.8, 1]*0, 8),  
				Pseq([0], 16),
				Pseq([0.8, 0.8, 0.9, 1]*0, 8)
			], inf) * 0.8,
			\atk, 1,
			\freq_l, Pseq([
				`[1000,100,10],
//				0, 0, 
//				`[8360,60,120], `[4360,60,120], 0, `[4360,60,120], 0,
//				`[1260,60,110], 0, `[8360,60,120], 0 
			],inf),
			\freq_d, Pseq([ [1000.4, 400] ], inf),
			\fb, Pseq([ [10000.5, 10000.3, 1000, 0] ], inf),
			\out, 7		
		]),
		
		
//1
		Pbind(*[
			\instrument, \kick2,
			\dur, Pseq([1/4, 1/2], inf),
			\amp, 0.4 * Pseq([
				Pseq([1], 5),
				Pseq([0.8, 1], 8),  
				Pseq([0, 1, 0, 1], 16),
				Pseq([0, 0.8, 0, 1], 8)
			], inf) * 0.8,
			\atk, Pseq([0.002, 0.02, 0.2, 0.001], inf),
			\freq_l, Pseq([ [1000, 100, 90] ],inf),
			\freq_d, Pseq([ [0.1, 0.04], [0.001, 0.004], [2000, 400] ], inf),
			\fb, Pseq([1000.3, 0.3, [100, 100000]], inf),
			\posp, Prand([1, -1], inf),
			\out, 8		
		]),

//2			
		Pbind(*[
			\instrument, \kick2,
			\dur, Pseq([1/4], inf),
			\amp, 0.8 * Pseq([
				Pseq([1], 5),
				Pseq([0.8, 1], 8),  
				Pseq([1, 1], 16),
				Pseq([0.8, 1], 8)
			], inf) * 0.8,
			\atk, Pseq([ [0.002, 0.1], [0.02, 0.1], [0.2, 0.1], [0.001, 1]], inf),
			\freq_l, Prand([ [1000, 100, 90, 9000, [90, 20000]] ],inf),
			\freq_d, Pseq([ [0.1, 0.04], [0.001, 0.004], [2000, 400] ], inf),
			\fb, Prand([1000.3, 0.3, [100, 10000], 100, 0.001], inf),
			\posp, Prand([1, -1], inf),
			\out, 9		
		]),
		
		
		Pbind(*[
			\instrument, \kick2,
			\dur, Pseq([1/2, 1/4, 1/4, 1/2, Pseq([1/8], 3), 1/8]/2, inf),
			\amp, 0*0.8 * Pseq([
				Pseq([1]*0, 16),
				Pseq([0.8, 1], 8),  
				Pseq([1], 16),
				Pseq([0.8, 0.8, 0.9, 1], 8)
			], inf) * 0.5,
			\freq_l, Pseq([
				`[1260,60,110],
				0, 0, 
				`[4360,60,120], `[8360,60,120], 0, `[4360,60,120], 0,
				`[1260,60,110], 0, `[8360,60,120], 0 
			],inf),
			\freq_d, Pseq([[0.01, 17000]], inf),
			\fb, Pseq([0.3, 0], inf),
			\rel, 0.3,
			\atk, 0.001,
			\out, 10			
		])

])).play(TempoClock(60/60), quant:[1]);

//:	
