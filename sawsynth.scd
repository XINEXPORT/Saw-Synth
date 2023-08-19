(
SynthDef("sawSynth", { arg freq = 440, amp = 0.1, att = 0.3, rel = 2, lofreq = 1000, mul = 1, hifreq = 3000;
    var env, snd;
    env = Env.asr(
		attackTime: att,
		sustainLevel:0.8,
		releaseTime: rel,
		curve:0.4
	    ).kr(doneAction: 2);
snd = Splay.ar (snd);
Pan2.ar(Out.ar (0, snd);
}).play;
)


{Pulse.ar(Pwhite (0,100),1, 2, 1, 4)}.play;




	