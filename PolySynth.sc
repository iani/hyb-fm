/* IZ 24 Jun 2016 10:26
Refactoring PolySynth_1, 2, 3
*/

PolySynth {
	var defFunc, synthFunc, bendFunc;
	var <waveTable1, <wavetable2, <harmonics, synths, lastNoteIndex = -1;

	*load { | defFunc, synthFunc, bendFunc |
		^this.new (defFunc, synthFunc, bendFunc).load;
	}

	new { | defFunc, synthFunc, bendFunc |
		defFunc ?? {
			defFunc = { }
		};
		synthFunc ?? {
			synthFunc = { }
		};
		bendFunc ?? {
			bendFunc = { }
		};
		^super.newCopyArgs (defFunc, synthFunc, bendFunc).init;
	}

	init {
		this.makeWavetables;
		this.makeHarmonics;
	}
	
	load {
		this.loadDef;
		this.loadMIDI;
	}
}