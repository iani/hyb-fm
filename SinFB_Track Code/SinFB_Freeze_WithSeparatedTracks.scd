
//////////////////////

b = Buffer.readChannel(s, "/Users/vagelis/Library/Application Support/SuperCollider/Sounds/sinFB_test_1.aiff", channels: 0);
b = Buffer.readChannel(s, "/Users/vagelis/Desktop/PTYXIAKI/SC_Code/SinFB_Track/_SinFB_Recs/Mix_SinFB_DrumTack.aif", channels: 0);



(
a = Buffer.readChannel(s, "/Users/vagelis/Desktop/PTYXIAKI/SC_Code/SinFB_Track/_SinFB_Recs/SinFB_Separated_Tracks/SinFBSep_ 2-Audio.aif", channels: 0);
b = Buffer.readChannel(s, "/Users/vagelis/Desktop/PTYXIAKI/SC_Code/SinFB_Track/_SinFB_Recs/SinFB_Separated_Tracks/SinFBSep_ 3-Audio.aif", channels: 0);
c = Buffer.readChannel(s, "/Users/vagelis/Desktop/PTYXIAKI/SC_Code/SinFB_Track/_SinFB_Recs/SinFB_Separated_Tracks/SinFBSep_ 4-Audio.aif", channels: 0);
d = Buffer.readChannel(s, "/Users/vagelis/Desktop/PTYXIAKI/SC_Code/SinFB_Track/_SinFB_Recs/SinFB_Separated_Tracks/SinFBSep_ 5-Audio.aif", channels: 0);
e = Buffer.readChannel(s, "/Users/vagelis/Desktop/PTYXIAKI/SC_Code/SinFB_Track/_SinFB_Recs/SinFB_Separated_Tracks/SinFBSep_ 6-Audio.aif", channels: 0);
f = Buffer.readChannel(s, "/Users/vagelis/Desktop/PTYXIAKI/SC_Code/SinFB_Track/_SinFB_Recs/SinFB_Separated_Tracks/SinFBSep_ 7-Audio.aif", channels: 0);
g = Buffer.readChannel(s, "/Users/vagelis/Desktop/PTYXIAKI/SC_Code/SinFB_Track/_SinFB_Recs/SinFB_Separated_Tracks/SinFBSep_ 8-Audio.aif", channels: 0);
h = Buffer.readChannel(s, "/Users/vagelis/Desktop/PTYXIAKI/SC_Code/SinFB_Track/_SinFB_Recs/SinFB_Separated_Tracks/SinFBSep_ 9-Audio.aif", channels: 0);
i = Buffer.readChannel(s, "/Users/vagelis/Desktop/PTYXIAKI/SC_Code/SinFB_Track/_SinFB_Recs/SinFB_Separated_Tracks/SinFBSep_ 10-Audio.aif", channels: 0);
j = Buffer.readChannel(s, "/Users/vagelis/Desktop/PTYXIAKI/SC_Code/SinFB_Track/_SinFB_Recs/SinFB_Separated_Tracks/SinFBSep_ 11-Audio.aif", channels: 0);
)

(
~rateMul = 1.1;
~bufs = 2048;

~bufs1 = 128;
~bufs2 = 256;
~bufs3 = 512;
~bufs4 = 1024;
~bufs5 = 8192;

		SynthDef(\freeze_1, { arg out=0, soundBufnum=2, rate = 1, bufs = 2048;
		 var in, chain;
		 in = PlayBuf.ar(1, soundBufnum, BufRateScale.kr(soundBufnum)*~rateMul*rate, loop: 1);
		 chain = FFT(LocalBuf([~bufs, ~bufs]), in);
		 chain = PV_MagFreeze(chain, MouseX.kr(0, LFNoise0.kr(MouseY.kr(0.5, 100)))
				 );
		Out.ar(out, 0.7 * IFFT(chain));

		}).add;


		SynthDef(\freeze_2, { arg out=0, soundBufnum=2, rate = 1, bufs = 2048;
		 var in, chain;
		 in = PlayBuf.ar(1, soundBufnum, BufRateScale.kr(soundBufnum)*~rateMul*rate, loop: 1);
		 chain = FFT(LocalBuf([~bufs, ~bufs]), in);
		 chain = PV_MagFreeze(chain, MouseX.kr(0, LFNoise0.kr(MouseY.kr(0.5, 100)))
				 );
		Out.ar(out, 0.7 * IFFT(chain));

		}).add;

		SynthDef(\freeze_3, { arg out=0, soundBufnum=2, rate = 1, bufs = 2048;
		 var in, chain;
	      in = PlayBuf.ar(1, soundBufnum, BufRateScale.kr(soundBufnum)*~rateMul*rate, loop: 1);
		 chain = FFT(LocalBuf([~bufs, ~bufs]), in);
		 chain = PV_MagFreeze(chain, MouseX.kr(0, LFNoise0.kr(MouseY.kr(0.5, 100)))
				 );
		Out.ar(out, 0.7 * IFFT(chain));

		}).add;

		SynthDef(\freeze_4, { arg out=0, soundBufnum=2, rate = 1, bufs = 2048;
		 var in, chain;
		 in = PlayBuf.ar(1, soundBufnum, BufRateScale.kr(soundBufnum)*~rateMul*rate, loop: 1);
		 chain = FFT(LocalBuf([~bufs, ~bufs]), in);
		 chain = PV_MagFreeze(chain, MouseX.kr(0, LFNoise0.kr(MouseY.kr(0.5, 100)))
				 );
		Out.ar(out, 0.7 * IFFT(chain));

		}).add;

		SynthDef(\freeze_5, { arg out=0, soundBufnum=2, rate = 1, bufs = 2048;
		 var in, chain;
		 in = PlayBuf.ar(1, soundBufnum, BufRateScale.kr(soundBufnum)*~rateMul*rate, loop: 1);
		 chain = FFT(LocalBuf([~bufs, ~bufs]), in);
		 chain = PV_MagFreeze(chain, MouseX.kr(0, LFNoise0.kr(MouseY.kr(0.5, 100)))
				 );
		Out.ar(out, 0.7 * IFFT(chain));

		}).add;

		SynthDef(\freeze_6, { arg out=0, soundBufnum=2, rate = 1, bufs = 2048;
		 var in, chain;
		 in = PlayBuf.ar(1, soundBufnum, BufRateScale.kr(soundBufnum)*~rateMul*rate, loop: 1);
		 chain = FFT(LocalBuf([~bufs, ~bufs]), in);
		 chain = PV_MagFreeze(chain, MouseX.kr(0, LFNoise0.kr(MouseY.kr(0.5, 100)))
				 );
		Out.ar(out, 0.7 * IFFT(chain));

		}).add;

		SynthDef(\freeze_7, { arg out=0, soundBufnum=2, rate = 1, bufs = 2048;
		 var in, chain;
		 in = PlayBuf.ar(1, soundBufnum, BufRateScale.kr(soundBufnum)*~rateMul*rate, loop: 1);
		 chain = FFT(LocalBuf([~bufs, ~bufs]), in);
		 chain = PV_MagFreeze(chain, MouseX.kr(0, LFNoise0.kr(MouseY.kr(0.5, 100)))
				 );
		Out.ar(out, 0.7 * IFFT(chain));

		}).add;

		SynthDef(\freeze_8, { arg out=0, soundBufnum=2, rate = 1, bufs = 2048;
		 var in, chain;
		 in = PlayBuf.ar(1, soundBufnum, BufRateScale.kr(soundBufnum)*~rateMul*rate, loop: 1);
		 chain = FFT(LocalBuf([~bufs, ~bufs]), in);
		 chain = PV_MagFreeze(chain, MouseX.kr(0, LFNoise0.kr(MouseY.kr(0.5, 100)))
				 );
		Out.ar(out, 0.7 * IFFT(chain));

		}).add;

		SynthDef(\freeze_9, { arg out=0, soundBufnum=2, rate = 1, bufs = 2048;
		 var in, chain;
		 in = PlayBuf.ar(1, soundBufnum, BufRateScale.kr(soundBufnum)*~rateMul*rate, loop: 1);
		 chain = FFT(LocalBuf([~bufs, ~bufs]), in);
		 chain = PV_MagFreeze(chain, MouseX.kr(0, LFNoise0.kr(MouseY.kr(0.5, 100)))
				 );
		Out.ar(out, 0.7 * IFFT(chain));

		}).add;

		SynthDef(\freeze_10, { arg out=0, soundBufnum=2, rate = 1, bufs = 2048;
		 var in, chain;
		 in = PlayBuf.ar(1, soundBufnum, BufRateScale.kr(soundBufnum)*~rateMul*rate, loop: 1);
		 chain = FFT(LocalBuf([~bufs, ~bufs]), in);
	    chain = PV_MagFreeze(chain, MouseX.kr(0, LFNoise0.kr(MouseY.kr(0.5, 100)))
				 );
		Out.ar(out, 0.7 * IFFT(chain));

		}).add;

)


(
~a1 = Synth(\freeze_1, [\soundBufnum, a, \out, 0]);
~a2 = Synth(\freeze_2, [\soundBufnum, b, \out, 1]);
~a3 = Synth(\freeze_3, [\soundBufnum, c, \out, 2]);
~a4 = Synth(\freeze_4, [\soundBufnum, d, \out, 3]);
~a5 = Synth(\freeze_5, [\soundBufnum, e, \out, 4]);
//~a5.free;
~a6 = Synth(\freeze_6, [\soundBufnum, f, \out, 5]);
~a7 = Synth(\freeze_7, [\soundBufnum, g, \out, 6]);
~a8 = Synth(\freeze_8, [\soundBufnum, h, \out, 7]);
~a9 = Synth(\freeze_9, [\soundBufnum, i, \out, 8]);
~a10 = Synth(\freeze_10, [\soundBufnum, j, \out, 9]);
)


(
~a1 = Synth(\freeze_1, [\soundBufnum, a, \out, 0]);
~a2 = Synth(\freeze_2, [\soundBufnum, b, \out, 0]);
~a3 = Synth(\freeze_3, [\soundBufnum, c, \out, 0]);
~a4 = Synth(\freeze_4, [\soundBufnum, d, \out, 0]);
~a5 = Synth(\freeze_5, [\soundBufnum, e, \out, 0]);
//~a5.free;
~a6 = Synth(\freeze_6, [\soundBufnum, f, \out, 0]);
~a7 = Synth(\freeze_7, [\soundBufnum, g, \out, 0]);
~a8 = Synth(\freeze_8, [\soundBufnum, h, \out, 0]);
~a9 = Synth(\freeze_9, [\soundBufnum, i, \out, 0]);
~a10 = Synth(\freeze_10, [\soundBufnum, j, \out, 0]);
)


(
t = Task({
� � inf.do({
� � � � x.set(\frez, 1);
� � � � 0.01.wait;
� � � � x.set(\frez, 0);� �
		0.2.wait;
� � � � x.set(\frez, 1);
� � � � 0.01.wait;
� � � � x.set(\frez, 0);� �
		0.03.wait;
� � � � x.set(\frez, 1);
� � � � 0.0001.wait;
� � � � x.set(\frez, 0);� �
		0.2.wait;
� � � � x.set(\frez, 1);
� � � � 0.01.wait;
� � � � x.set(\frez, 0);� �
		2.wait;
	});

});
)

t.start;
t.stop;

x.set(\frez, 1);
x.set(\frez, 0);

