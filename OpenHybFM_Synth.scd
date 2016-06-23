
MIDIClient.init;
~inPorts = 3;
~outPorts = 3;
MIDIClient.init(~inPorts,~outPorts);
~inPorts.do({ arg i;
	MIDIIn.connect(i, MIDIClient.sources.at(i));
});



//:

PolySynth_1.load;
PolySynth_2.load;
PolySynth_3.load;
HybFMGui.load;



