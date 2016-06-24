/* IZ 24 Jun 2016 10:26
Refactoring PolySynth_1, 2, 3
*/

PolySynth {
	var waveTable, harmonics, synths;

	*load {
		^this.new.load;
	}

	new {
		^super.new.init;
	}

	init {
	}
	
	load {
		this.loadDef;
		this.loadMIDI;
	}
}