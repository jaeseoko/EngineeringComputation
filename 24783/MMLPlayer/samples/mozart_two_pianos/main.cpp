#include <iostream>
#include <string>
#include "mmlplayer.h"
#include "fssimplewindow.h"
#include "yssimplesound.h"



void SetUpMML(MMLSegmentPlayer &player);

int main(void)
{
	MMLSegmentPlayer mmlplayer;

	SetUpMML(mmlplayer);


	FsOpenWindow(0,0,800,600,0);

	YsSoundPlayer player;
	player.Start();

	YsSoundPlayer::Stream stream;
	player.StartStreaming(stream);

	YsSoundPlayer::SoundData nextWave;
	auto rawWave=mmlplayer.GenerateWave(1000);  // Create for next 100ms
	nextWave.CreateFromSigned16bitStereo(YM2612::WAVE_SAMPLING_RATE,rawWave);

	if(0!=mmlplayer.GetLastErrorCode())
	{
		for(auto msg : mmlplayer.GetLastError().Format())
		{
			std::cout << msg << std::endl;
		}
	}

	for(;;)
	{
		FsPollDevice();

		player.KeepPlaying();  // <- This line is only needed for Linux ALSA.

		auto key=FsInkey();
		if(FSKEY_ESC==key)
		{
			break;
		}

		if(YSTRUE==player.StreamPlayerReadyToAcceptNextSegment(stream,nextWave))
		{
			player.AddNextStreamingSegment(stream,nextWave);
			auto rawWave=mmlplayer.GenerateWave(1000);  /// Create for next 100ms
			nextWave.CreateFromSigned16bitStereo(YM2612::WAVE_SAMPLING_RATE,rawWave);

			if(0!=mmlplayer.GetLastErrorCode())
			{
				for(auto msg : mmlplayer.GetLastError().Format())
				{
					std::cout << msg << std::endl;
				}
			}
		}
	}

	player.End();

	return 0;
}

const std::string MML[][12]=
{
// From F-BASIC V3.0 PSG code.
//1  (Need check 48, 74-75, 125, 135)
	{
		"@2v15t138o6d2o5a2",
		"@2v15t138o4d2o3a2",
		"@2v15t138o4d2a2",
		"",
		"",
		"",
	},
	{
		"o5l32f+g+f+g+f+g+f+g+f+g+f+g+e16d16a4r8r16l24o4abo5c+",
		"o4l32f+g+f+g+f+g+f+g+f+g+f+g+e16d16a4r8r16l24o3abo4c+",
		"o3l32f+g+f+g+f+g+f+g+f+g+f+g+e16d16a4r8r16l24o2abo3c+",
		"",
		"",
		"",
	},
	{
		"o5d4o4a8.o5d16e4o4a8.o5e",
		"o4d4o3a8.o4d16e4o3a8.o4e",
		"o3d4o2a8.o3d16e4o2a8.o3e",
		"",
		"",
		"",
	},
	{
		"o5f+4d8.f+16a4r4",
		"o4f+4d8.f+16a4r4",
		"o3f+4d8.f+16a4r4",
		"",
		"",
		"",
	},
	{
		"v13o5d8 r8d2 f+4",
		"v13o4f+8r8f+2a4",
		"v14l8o2do3ddddddd",
		"",
		"",
		"",
	},
//6
	{
		"o5f+8e8d16l16o4abo5c+dc+do4ao5edeo4a",
		"o4g4f+4r2",
		"o3dddddddd",
		"",
		"",
		"",
	},
	{
		"o5f+8r8f+2a4",
		"o5d8r8d2f+4",
		"l8o2do3ddddddd",
		"",
		"",
		"",
	},
	{
		"o5a8g8l16o5dc+def+ef+dgf+ge",
		"o5f+8e8f+4r2",
		"l8o3dddddddd",
		"",
		"",
		"",
	},
//9
	{
		"l16o5ao4abo5c+def+gabo6c+do5a8r8",
		"v14l8r8o4f+f+f+r8f+f+f+",
		"o3do4dddo3ao4ddd",
		"",
		"",
		"",
	},
	{
		"l16r16o4abo5c+def+g+ao6c+deo5a8r8",
		"v14l8r8o4gggr8ggg",
		"o3do4eeeo3ao4eee",
		"",
		"",
		"",
	},
//11
	{
		"l16r16o4abo5c+def+gabo6c+do5a8r8",
		"v14l8r8o4f+f+f+r8f+f+f+",
		"o3do4dddo3ao4ddd",
		"",
		"",
		"",
	},
	{
		"l16o5bo6do5bo6do5egegf+af+ac+ec+e",
		"v13l4o4eo3gao2a",
		"v13l4o3bo2gao1a",
		"",
		"",
		"",
	},
//13
	{
		"l16o5do4abo5c+def+gabo6c+do5abo6c+d",
		"v14l8o4f+f+f+f+r8f+f+f+",
		"v14l8o4ddddo3ao4ddd",
		"",
		"",
		"",
	},
	{
		"l16o5ao4abo5c+def+g+ao6c+deo5ao6c+de",
		"l8r8o4gggr8ggg",
		"l8o3ao4eeeo3ao4eee",
		"",
		"",
		"",
	},
//15
	{
		"l16o5ao4abo5c+def+gabo6c+do5abo6c+d",
		"v14l8o4f+f+f+f+r8f+f+f+",
		"v14l8o4ddddo3ao4ddd",
		"",
		"",
		"",
	},
	{
		"v13l16o5bo6do5bo6do5egegf+af+ac+ec+e",
		"v13l16o5gbgbo4gbgbdf+df+egeg",
		"v13l4o3r4gao2a",
		"",
		"",
		"",
	},
//17
	{
		"o5d4l16o6do5af+daf+do4ao5f+do4af+",
		"l16o3do4do3f+o4do3ao4do3f+o4do3do4do3f+o4do3ao4do3f+o4d",
		"o4f+4r4r2",
		"",
		"",
		"",
	},
	{
		"v11l16o5do4af+dc+dc+dc+dc+dc+dc+d",
		"v11l8o3ddo2af+df+ao3d",
		"v11l16o3do4do3f+o4dv15o6do5af+daf+do4ao5f+do4af+",
		"",
		"",
		"",
	},
//19
	{
		"v11o3b8r8v15l16o6do5f+do4bo5f+do4bf+o5do4af+d",
		"v11l16o2bo3bdbf+bdbo2bo3bdbf+bdb",
		"v15l16o5do4af+dv11c+dc+dc+dc+dc+dc+d",
		"",
		"",
		"",
	},
	{
		"v15o5do4f+do3bv11a+ba+ba+ba+b",
		"v11o3b8r8v15o6do5f+do4bo5f+do4bf+o5do4af+d",
		"v11o2bo3bdbf+bdbo2bo3bdbf+bdb",
		"",
		"",
		"",
	},
//21
	{
		"v11l16o3g8r8v15o5gdo4bgo5do4bgdbgdo3b",
		"v11l16o2go3go2bo3gdgo2bo3go2go3go2do3gdgo2bo3g",
		"v15l16o5do4f+do3bv11o3a+ba+ba+ba+ba+ba+b",
		"",
		"",
		"",
	},
	{
		"v15l16o4gdo3bgv11f+gf+gf+gf+gf+gf+g",
		"v11o3g8r8v15l16o5gdo4bgo5do4bgdbgdo3b",
		"l16o2go3go2bo3gdgo2bo3go2go3go2bo3gdgo2bo3g",
		"",
		"",
		"",
	},
//23
	{
		"v11l16o3g+8abo4v15c+def+g+abo5c+def+g+",
		"v15o4d2o4d2",
		"v15o3b2o3g+2",
		"",
		"",
		"",
	},
	{
		"o5a2d+2",
		"o3a2o4d+2",
		"o4c+def+g+abo5c+d+ef+g+abo6c+d+",
		"",
		"",
		"",
	},
//25
	{
		"l16o6eo5eo6eo5e o6eo5eo6eo5e o6eo5eo6eo5e o6eo5eo6eo5e",
		"o4g+4r4d+32e32e16e8e4",
		"o3e2r8l8g+bg+",
		"",
		"",
		"",
	},
	{
		"l16o6eo5f+o6eo5f+ o6eo5f+o6eo5f+ o6eo5f+o6eo5f+ o6eo5f+o6eo5f+",
		"o4d+32e4e8e16e32 d+32e4e8e16e32",
		"r8o3ao4c+o3a+r8o3b16o4c+16d8o3b8",
		"",
		"",
		"",
	},
//27
	{
		"o4d+32e4e8e16e32 d+32e4e8e16e32",
		"l16o6do5eo6do5e o6do5eo6do5e o6c+o5eo6c+o5e o6c+o5eo6c+o5e",
		"l8r8o3g+bg+r8a16b16o4c+o3a",
		"",
		"",
		"",
	},
	{
		"o4d+32e4e8e16e32 d+32e4e8e16e32",
		"l16o6c+o5do6c+o5d o6c+o5do6c+o5d o6c+o5do6c+o5d o6c+o5do6c+o5d ",
		"l8r8o3f+af+r8g+16a16bg+",
		"",
		"",
		"",
	},
//29
	{
		"o4d+32e4e8e16e32 d+32e4e8e16e32",
		"l16o5bc+bc+bc+bc+bd+bd+bd+bd+",
		"l8r8a16b16o4c+o3ar8o4f+16g+16af+",
		"",
		"",
		"",
	},
	{
		"l16o4g+bo5eg+o4f+bo5df+o4eao5c+eo4dg+bo5d",
		"l4o3edc+o2b",
		"o5g+8r8 l32f+g+f+g+f+g+ ef+e8r8d8r8",
		"",
		"",
		"",
	},
//31
	{
		"o5c+8r8v14l16bag+ag+f+e+f+edc+d",
		"v14l8o2aao3c+c+ddf+f+",
		"o3e8r8a4a8a16r16a4",
		"",
		"",
		"",
	},
	{
		"o5c+8e16c+16a8a8o4b8o5d16o4b16o5g+8g+8",
		"o3l8aao4c+c+ddo3bb",
		"v14o3l8eeeeeeee",
		"",
		"",
		"",
	},
	{
		"o5l16aec+ea8o6c+8o5a4r4",
		"o3l8aec+eo2a4r4",
		"r4r4o5e4r4",
		"",
		"",
		"",
	},
//34
//$$SECTION2
	{
		"v13l8o4ag+f+ea4b4",
		"v13r2r4o4e4",
		"v13r2r4o3g+4",
		"",
		"",
		"",
	},
	{
		"o4b4o5d8.c+16o4b4o5d+32e32e16e8",
		"o4e4a4g+4r4",
		"o3a4o4c+4o3e4r4",
		"",
		"",
		"",
	},
	{
		"o4l8ag+f+ea4o5e4",
		"r2r4o4b4",
		"r2r4o3g+4",
		"",
		"",
		"",
	},
	{
		"o5d4 l32o5c+d+c+d+c+d+c+d+ o4b4o5d+32e32e16e8",
		"o4b4 l32o4abababab g+4r4",
		"o3a2e4r4",
		"",
		"",
		"",
	},
	{
		"l8o4ag+ l32f+g+f+g+ l8ea4b4",
		"l4r2r4o4e4",
		"l4r2r4o3g+4",
		"",
		"",
		"",
	},
//39
	{
		"l4o4bo5d8.c+16o4bo5d+32e32e16e8",
		"l4o4eag+r8",
		"l4o3ao4c+o3br4",
		"",
		"",
		"",
	},
	{
		"l8o5e8.c+16o4b8.o5d16o4a4o5c+8.o4b16",
		"l4o3abo4c+d",
		"l4o3c+dee",
		"",
		"",
		"",
	},
	{
		"l16o4ar16ao5c+o4bo5dc+edf+eg+f+ag+b",
		"o4c+4r4r2",
		"o3a4r4r2",
		"",
		"",
		"",
	},
	{
		"l8o5ag+f+ea4b4",
		"l8o4ag+f+ea4b4",
		"r1",
		"",
		"",
		"",
	},
//43
	{
		"o6c+2c+8l8edo5b",
		"o3l8ag+f+ea4b4",
		"o5e1",
		"",
		"",
		"",
	},
	{
		"l8o5ag+f+ea4b4",
		"o4c+2l8c+edo3b",
		"r1",
		"",
		"",
		"",
	},
	{
		"o6d2c+8.d16o5b8.o6c+16",
		"o3l8ag+f+ea4b4",
		"r1",
		"",
		"",
		"",
	},
//46
	{
		"o5a8 l32g+a+g+a+ l8f+ea4b4",
		"o4d2c+8.d16o3b8.o4c+16",
		"r1",
		"",
		"",
		"",
	},
	{
		"o6c+2l8c+edo5b",
		"o5e2e4d4",
		"o3a8 l32g+a+g+a+ l8f+ea4g+4",
		"",
		"",
		"",
	},
	{
		"o5l8baa4a4o6c+8.o5b16",
		"o5c+4f+4e4g+4",
		"o3a4o4d+4e4o5d4",
		"",
		"",
		"",
	},
//49
	{
		"o5a4r4r2",
		"l16o3ag+ag+ag+ag+abo4c+def+g+a",
		"l8v14l8o1ao2aaaaaaa",
		"",
		"",
		"",
	},
	{
		"l16o3ba+ba+ba+ba+bo4c+def+g+ab",
		"o4a2g8.f+16e8.d16",
		"l8o1ao2aaaaaaa",
		"",
		"",
		"",
	},
//51
	{
		"o4b2a8.g16f+8.e16",
		"l16o4c+cc+cc+cc+cc+def+gabo5c+",
		"o2ao3aaaaaaa",
		"",
		"",
		"",
	},
	{
		"l16o4dc+dc+dc+dc+def+gabo5c+d",
		"o5c+2o4b8.a16g8.f+16",
		"o2ao3aaaaaaa",
		"",
		"",
		"",
	},
//53
	{
		"o5d2c+8.o4b16a8.g16",
		"o4l16ed+ed+ed+ed+ef+gabO5c+de",
		"o2ao3aaaaaaa",
		"",
		"",
		"",
	},
	{
		"o4l16f+e+f+e+f+e+f+e+f+gabo5c+def+",
		"o4l16dc+dc+dc+dc+def+gabo5c+d",
		"o2ao3aaaaaaa",
		"",
		"",
		"",
	},
//55
//"l16o4dc+dc+dc+dc+defg+abo5c+d"
//"l16o3ba+ba+ba+ba+bo4c+def+g+ab"
//"v13l16o4g+f+g+f+g+f+g+f+g+abo5c+defg+"
	{
		"l16o4g+f+g+f+g+f+g+f+g+abo5c+defg+",
		"l16o4dc+dc+dc+dc+defg+abo5c+d",
		"l8o2aaaaaaaa",
		"",
		"",
		"",
	},
//56
	{
		"l16o4c+cc+cc+cc+cc+def+g+abo5c+",
		"l16o2ag+ag+ag+ag+abo3c+def+g+a",
		"v13o5l8ac+ac+ac+ac+",
		"",
		"",
		"",
	},
//57
	{
		"l16o3ag+ag+ag+ag+abo4c+def+g+a",
		"l16o2f+e+f+e+f+e+f+e+f+g+abo3c+d",
		"l8af+af+af+af+",
		"",
		"",
		"",
	},
//58
	{
		"l16o3f+e+f+e+f+e+f+e+f+g+abo4c+def+",
		"l16o2dc+dc+dc+dc+def+g+abo3c+d",
		"l8o6do5f+o6do5f+o6do5f+o6do5f+",
		"",
		"",
		"",
	},
//59
	{
		"l16o3dc+dc+dc+dc+def+g+abo4c+d",
		"l16o1ba+ba+ba+ba+bo2c+def+g+ab",
		"l8o6do5f+o6do5f+o6do5f+o6do5f+",
		"",
		"",
		"",
	},
	{
		"l16o4g+abag+ef+g+abo5c+o4bo5c+o4bag+",
		"l16o3g+abag+ef+g+abo4c+o3bo4c+o3bag+",
		"o6d4r4c+4r4",
		"",
		"",
		"",
	},
//61
	{
		"l16o4f+g+ag+f+def+g+abag+f+ed",
		"l16o3f+g+ag+f+def+g+abag+f+ed",
		"o6c+4r4o5b4r4",
		"",
		"",
		"",
	},
	{
		"l16o4c+edc+def+g+abo5c+def+g+a",
		"l16o3c+edc+def+g+abo4c+def+g+a",
		"o5b4r4a4r4",
		"",
		"",
		"",
	},
//63
	{
		"l16o5f+g+f+edc+o4bag+ag+f+edc+o3b",
		"l16o4f+g+f+edc+o3bag+ag+f+edc+o2b",
		"o5a4r4g+4r4",
		"",
		"",
		"",
	},
	{
		"l16o3ao4c+eao5c+o4ao5ec+aeo6c+o5ao6e16r16e16r16",
		"o2a4r4r4o4c+8o3b8",
		"o3c+4r4r4o3c+8o2b8",
		"",
		"",
		"",
	},
//65
	{
		"l8o6eo5f+16r16f+4.a+16b16o6d16r16d16r16",
		"l16o5f+gf+e+f+gef+dec+do4bo5c+dd+",
		"l16o4f+gf+e+f+gef+dec+do3bo4c+dd+",
		"",
		"",
		"",
	},
	{
		"l8o6do5e16r16e4.g+16a16o6c+16r16c+16r16",
		"l16o5ef+ed+ef+dec+do4bo5c+o4abo5c+o4a",
		"l16o4ef+ed+ef+dec+do3bo4c+o3abo4c+o3a",
		"",
		"",
		"",
	},
//67
	{
		"o6c+8o5d16r16d4.f+16g+16b16r16b16r16",
		"l16o5dedc+dec+do4bo5c+o4a+bg+abb+",
		"l16o4dedc+dec+do3bo4c+o3a+bg+abb+",
		"",
		"",
		"",
	},
	{
		"o5b8c+16r16c+4.e+16g16a16r16a16r16",
		"l16o5c+dc+cc+do4bo5c+o4abg+af+edc+",
		"l16o4c+dc+cc+do3bo4c+o3abg+af+edc+",
		"",
		"",
		"",
	},
//69
	{
		"l8o5ao4br8br8br8 l32o4bo5c+o4bo5c+ l8",
		"l8o3dr8dr8dr8dr8",
		"l16o3bo4df+daf+df+o3bo4df+daf+df+",
		"",
		"",
		"",
	},
	{
		"l8o5acr8cr8cr8 l32cdcd l8",
		"l8o3d+r8d+r8d+r8d+r8",
		"o4cd+f+d+af+d+f+cd+f+d+af+d+f+",
		"",
		"",
		"",
	},
//71
	{
		"l16o5c+o4ao5ec+aeo6c+o5ao6ec+o5aeaec+o4a",
		"o3e4r4r2",
		"o2e4r4r2",
		"",
		"",
		"",
	},
	{
		"o5c+2o4 l32o4bo5c+o4bo5c+o4bo5c+o4bo5c+o4bo5c+o4bo5c+ l8o4a16b16",
		"l16o3eo4ed+ef+ed+eo3eo4dc+dedc+d",
		"v14l8o3eeeeo2eeee",
		"",
		"",
		"",
	},
//73
	{
		"o4a4r16l16abo5c+def+g+abo6c+o5a",
		"v14l8o4c+c+aag+g+gg",
		"l8o3ao2ao3aaaaaa",
		"",
		"",
		"",
	},
	{
		"o6d8o5b8f+4l16f+g+af+g+abg+",
		"l8o4f+f+f+f+dddd",
		"l8o2ao3ao2ao3ao2ao3a",
		"",
		"",
		"",
	},
//75
	{
		"o5a4r16l16o3abo5c+def+g+abo6c+o5a",
		"l8o4c+c+aag+g+gg",
		"l8o2ao1ao2aaaaaa",
		"",
		"",
		"",
	},
	{
		"o6d8o5b8f+4l16f+g+af+g+abg+",
		"o4l8f+f+f+f+dddd",
		"l8o2ao3ao2ao3ao2ao3ao2ao3a",
		"",
		"",
		"",
	},
//77
	{
		"l16o5ac+eao6c+o5eao6c+e16r16e16r16o5g+16r16g+16r16",
		"l16o4c+8eao5c+o4eao5c+e16r16e16r16o4c+16r16c+16r16",
		"o2a4r4r4o3e4",
		"",
		"",
		"",
	},
	{
		"o5a4r4r4g+16r16r8",
		"l16o5ac+eao6c+o5eao6c+e16r16e16r16o5g+16r16g+16r16",
		"l16o3ao4c+eao5c+o4eao5c+e16r16e16r16o3e16r16e16r16",
		"",
		"",
		"",
	},
//79
	{
		"l32o4ao5c+eaa8 c+eao6c+c+8 o5eao6c+ee8 o5c+eao6c+c+8",
		"l16o2ao1ao2c+eac+eao3c+o2eao3c+ec+ec+",
		"l16o3ao2ao3c+eac+eao4c+o3eao4c+ec+ec+",
		"",
		"",
		"",
	},
	{
		"l32o4ao5c+eaa8 v14l8o3a8.a16a4r4",
		"o2a4o1a8r8a4r4",
		"o3a4v14o2a8.a16a4r4",
		"",
		"",
		"",
	},
//$$SECTION3
	{
		"v13o5a2g+4f+4",
		"v13o4a2g+4f+4",
		"v13r2",
		"",
		"",
		"",
	},
	{
		"o5d+4e4.l8o4ao5dc+",
		"o4d+4e4.l8o3ao4dc+",
		"r2",
		"",
		"",
		"",
	},
//83
	{
		"l4o4b+o5c+.l8o4f+ba",
		"l4o3b+o4c+.l8o3f+ba",
		"r2",
		"",
		"",
		"",
	},
	{
		"l8o4g+eaf+do3bo4ed",
		"l8o3g+eaf+do2bo3ed",
		"r2",
		"",
		"",
		"",
	},
	{
		"l4o5a2g+f+",
		"l4o4a2g+f+",
		"l4o4c+o3c+o2ba",
		"",
		"",
		"",
	},
	{
		"l4o5d+e.l8o4ao5dc+",
		"l4o5co4b8b-8ao5a",
		"l4o2ag+8g8f+2",
		"",
		"",
		"",
	},
//87
	{
		"l4o4b+o5c+.l8o4fba",
		"l8o5aag+gf+4f4",
		"l8o2f+f+e+ed+d4",
		"",
		"",
		"",
	},
	{
		"l4o4g+a l32o5dededededede l16c+d",
		"l4o5eo4af+g+",
		"l4o2dc+o1bo2e",
		"",
		"",
		"",
	},
	{
		"l16o5c+o4ao5do4bo5ec+f+dgeaf+bgo6c+o5a",
		"l8o4c+def+gabo5c+",
		"l8o2abo4c+def+ga",
		"",
		"",
		"",
	},
//90
	{
		"l16o5fo6do5fo6do5fo6do5fo6do5fo6do5fo6do5fo6do5fo6d",
		"o4d2c4o3b-4",
		"o3d2c4o2b-4",
		"",
		"",
		"",
	},
	{
		"l16o5eo6do5eo6d o5eo6c+o5eo6c+ o5f+o6co5f+o6c o5gbgb",
		"o3g+4a4.l8dgf",
		"o2g+4a4.l8dgf",
		"",
		"",
		"",
	},
//92
	{
		"l16o5cb-cb-cacao4b-o5ao4b-o5ao4b-o5go4b-o5g",
		"l4o3ef.l8o2b-o3ed",
		"l4o2ef.l8o1b-o2ed",
		"",
		"",
		"",
	},
	{
		"l16o4ao5go4ao5g o4ao5fo4ao5feaea o5g+o6do5g+o6d",
		"l4o3c+dco2b-",
		"l4o2c+dco1b-",
		"",
		"",
		"",
	},
//94
	{
		"v13o6c+4r4o5g4f+4",
		"v13o5a2v14l8o4c+c+dd",
		"v14l8o2ao3aaaaaaa",
		"",
		"",
		"",
	},
	{
		"v13l4o5d+e.l8gc+e",
		"v14l8o4ddeeeeee",
		"v14l8o3aaaaaaaa",
		"",
		"",
		"",
	},
	{
		"o6d2c+4o5b4",
		"v14l8o4f+f+f+f+eedd",
		"v14l8o3aaaaaaaa",
		"",
		"",
		"",
	},
//97
	{
		"l4o5a+b.l8o6do5g+b",
		"l8o4c+c+ddddo4bb",
		"l8o3aaaaaaaa",
		"",
		"",
		"",
	},
	{
		"l32o4a32o5a32a16a8a8.bag8.agf+8.gf+",
		"l8o4c+c+c+c+c+c+dd",
		"l8o3aaaaaaaa",
		"",
		"",
		"",
	},
	{
		"l8o5d+f+e4l16ef+gec+dec+",
		"l8o4f+f+ggggee",
		"l8o3aaaaaaaa",
		"",
		"",
		"",
	},
//100
	{
		"l32o5d32o6d32d16d8d8.edc+8.dc+o5b8.o6c+o5b",
		"l8o4f+f+f+f+eedd",
		"l8o3aaaaaaaa",
		"",
		"",
		"",
	},
	{
		"l8o5a+o6c+o5b4l16bo6c+do5bg+abg+",
		"l8o4c+c+ddddo3bb",
		"l8o3aaaaaaaa",
		"",
		"",
		"",
	},
//102
	{
		"v13o5a8r8l16f+ag+ba8r8f+ag+b",
		"v13l8o4c+r8d4c+r8d4",
		"v13l8o3ar8a8r8a8r8a8r8",
		"",
		"",
		"",
	},
	{
		"o5a8r8l16f+ag+bar16ar16f+ag+b",
		"o4c+r8d4c+8r8d8r8",
		"o3ar8a8r8a8r8a8r8",
		"",
		"",
		"",
	},
	{
		"l16o5a16r16a16r16l8aa+bd+ef+",
		"o4c+8r8r4r2",
		"o3a8r8r4r2",
		"",
		"",
		"",
	},
//105
	{
		"l8r4o5ef+go4a+r4",
		"l8o5agr4r4v9o4be",
		"r1",
		"",
		"",
		"",
	},
	{
		"v9l16o3go4c+ec+ec+ec+o3go4c+ec+ec+ec+",
		"v9l8o5dc+o4gf+egba",
		"v9o2a1",
		"",
		"",
		"",
	},
//107
	{
		"v10l16o3go4c+ec+ec+ec+o3go4c+ec+ec+ec+",
		"v10l8o4gbo5edc+eg",
		"v10l8o3g4o4gf+ego5ed",
		"",
		"",
		"",
	},
	{
		"v11l8o5egbagf+ed",
		"v11l8o5c+egf+edc+o4b",
		"v11o3g4r4r8",
		"",
		"",
		"",
	},
	{
		"v13l8o6c+o5babagf+e",
		"v13l8o5c+o4babagf+e",
		"v13l16o2ao3ao2ao3ao2ao3ao2ao3ao2ao3ao2ao3ao2ao3ao2ao3a",
		"",
		"",
		"",
	},
//110 110-124 same as 1-15
//$$MAIN_THEME2
	{
		"v15t138o6d2o5a2",
		"v15t138o4d2o3a2",
		"v15t138o4d2a2",
		"",
		"",
		"",
	},
	{
		"o5l32f+g+f+g+f+g+f+g+f+g+f+g+e16d16a4r8r16l24o4abo5c+",
		"o4l32f+g+f+g+f+g+f+g+f+g+f+g+e16d16a4r8r16l24o3abo4c+",
		"o3l32f+g+f+g+f+g+f+g+f+g+f+g+e16d16a4r8r16l24o2abo3c+",
		"",
		"",
		"",
	},
	{
		"o5d4o4a8.o5d16e4o4a8.o5e",
		"o4d4o3a8.o4d16e4o3a8.o4e",
		"o3d4o2a8.o3d16e4o2a8.o3e",
		"",
		"",
		"",
	},
	{
		"o5f+4d8.f+16a4r4",
		"o4f+4d8.f+16a4r4",
		"o3f+4d8.f+16a4r4",
		"",
		"",
		"",
	},
	{
		"v13o5d8 r8d2 f+4",
		"v13o4f+8r8f+2a4",
		"v14l8o2do3ddddddd",
		"",
		"",
		"",
	},
//115
	{
		"o5f+8e8d16l16o4abo5c+dc+do4ao5edeo4a",
		"o4g4f+4r2",
		"o3dddddddd",
		"",
		"",
		"",
	},
	{
		"o5f+8r8f+2a4",
		"o5d8r8d2f+4",
		"l8o2do3ddddddd",
		"",
		"",
		"",
	},
	{
		"o5a8g8l16o5dc+def+ef+dgf+ge",
		"o5f+8e8f+4r2",
		"l8o3dddddddd",
		"",
		"",
		"",
	},
//118
	{
		"l16o5ao4abo5c+def+gabo6c+do5a8r8",
		"v14l8r8o4f+f+f+r8f+f+f+",
		"o3do4dddo3ao4ddd",
		"",
		"",
		"",
	},
	{
		"l16r16o4abo5c+def+g+ao6c+deo5a8r8",
		"v14l8r8o4gggr8ggg",
		"o3do4eeeo3ao4eee",
		"",
		"",
		"",
	},
//120
	{
		"l16r16o4abo5c+def+gabo6c+do5a8r8",
		"v14l8r8o4f+f+f+r8f+f+f+",
		"o3do4dddo3ao4ddd",
		"",
		"",
		"",
	},
	{
		"l16o5bo6do5bo6do5egegf+af+ac+ec+e",
		"v13l4o4eo3gao2a",
		"v13l4o3bo2gao1a",
		"",
		"",
		"",
	},
//122
	{
		"l16o5do4abo5c+def+gabo6c+do5abo6c+d",
		"v14l8o4f+f+f+f+r8f+f+f+",
		"v14l8o4ddddo3ao4ddd",
		"",
		"",
		"",
	},
	{
		"l16o5ao4abo5c+def+g+ao6c+deo5ao6c+de",
		"l8r8o4gggr8ggg",
		"l8o3ao4eeeo3ao4eee",
		"",
		"",
		"",
	},
//124
	{
		"l16o5ao4abo5c+def+gabo6c+do5abo6c+d",
		"v14l8o4f+f+f+f+r8f+f+f+",
		"v14l8o4ddddo3ao4ddd",
		"",
		"",
		"",
	},
// Different from MAIN THEME Patten 1 from here.
	{
		"l16o5go4bo5cdef+gabo6cc+do5bo6cc+d",
		"l8o4dgggdggg",
		"l8o2bo4dddo2bo4ddd",
		"",
		"",
		"",
	},
//126
	{
		"v13l16o6co5cde f+gab o6co5ao6co5a o6co5ao6co5a",
		"l8o3ao4aaao3ao4aaa",
		"l8o3f+o4dddo3f+o4ddd",
		"",
		"",
		"",
	},
	{
		"l16o5b8r8o6do5bgdbgdo4bo5gdo4bg",
		"v13l16o2go3go2bo3gdo2bo3go2go3go2bo3gdgo2bo3g",
		"v13o4d4r4r2",
		"",
		"",
		"",
	},
//128
	{
		"l16o4bgdo3ba+ba+ba+ba+ba+ba+b",
		"l16r4o6do5bgdbgdo4bo5gdo4bg",
		"l16o2go3go2bo3gdgo2bo3go2go3go2bo3gdgo2bo3g",
		"",
		"",
		"",
	},
	{
		"l16o3g8r8o5bgeo4bo5geo4bgo5eo4bge",
		"l16o2eo3eo2go3eo2bo3eo2go3eo2eo3eo2go3eo2bo3eo2go3e",
		"l16o4bgdo3ba+ba+ba+ba+ba+ba+b",
		"",
		"",
		"",
	},
//130
	{
		"l16o4geo3bgf+gf+gf+gf+gf+gf+g",
		"l16o3g8r8o5bgeo4bo5geo4bgo5eo4bge",
		"l16o2eo3eo2go3eo2bo3eo2go3eo2eo3eo2go3eo2bo3eo2go3e",
		"",
		"",
		"",
	},
	{
		"l16o3e8r8o5gec+o4go5ec+o4geo5c+o4gec+",
		"l16o2c+o3c+o2eo3c+o2ao3c+o2eo3c+o2cO3c+o2eo3c+o2ao3c+o2eo3c+",
		"l16o4geco3gf+gf+gf+gf+gf+gf+g",
		"",
		"",
		"",
	},
//132
	{
		"l16o4ec+o3ged+ed+ed+ed+ed+ed+e",
		"l16o3e8r8o5gec+o4go5ec+o4geo5c+o4gec+",
		"l16o1ao2ac+o2aeac+ao1ao2ac+aeac+a",
		"",
		"",
		"",
	},

	{
		"l16o3f+8gabo4c+def+gabo5c+def+",
		"l16o2do3def+gabo4c+def+gabo5c+d",
		"",
		"",
		"",
		"",
	},
//134
	{
		"l4o5g+r4g+r4",
		"l16o3g+8abo4c+def+g+abo5c+def+g+",
		"l16o2b8o3c+def+g+abo4c+def+g+ab",
		"",
		"",
		"",
	},
	{
		"l16o5aec+el8ao6c+o5a4r4",
		"l8o5f+c+o4ao5c+o5e4r4",
		"l4o5c+o4ao5c+r4",
		"",
		"",
		"",
	},
	{
		"v11l8o5dc+o4bal4o5de",
		"v11r2r4o4a",
		"v11r2r4o4g",
		"",
		"",
		"",
	},
//137
	{
		"l4o5eg16f+8.eg+32a32a16a8",
		"l4o4gf+er4",
		"l4o4d2o3ar4",
		"",
		"",
		"",
	},
	{
		"l8o5dc+o4bao5d4a4",
		"l4r2r4o5e",
		"l4r2r4o4c+",
		"",
		"",
		"",
	},
	{
		"l4o5g l32f+g+f+g+f+g+f+g+ l4o5e32f+32e16e8g+32a32a16a8",
		"l4o5e l32dededede l4c+r4",
		"l4o4d2o3ar4",
		"",
		"",
		"",
	},
	{
		"l8o5dc+ l32o4bo5c+o4bo5c+ o4a8o5d4e4",
		"l4r2r4o4a",
		"l4r2r4o4c+",
		"",
		"",
		"",
	},
	{
		"l4o5eg16f+8.er4",
		"l4o4ao5dc+r4",
		"l4o4df+eo5g+32a32a16a8",
		"",
		"",
		"",
	},
//142
	{
		"l8o5a.f+16e.g16d4f+16e.",
		"l4o4def+g",
		"l4o3f+gaa",
		"",
		"",
		"",
	},
	{
		"l16o5d8o4df+egf+agbao5c+o4bo5dc+e",
		"l4o4f+4r4r2",
		"l4o4d4r4r2",
		"",
		"",
		"",
	},
	{
		"v11l8o5dc+o4bal4o5de",
		"v11r1",
		"v11r1",
		"",
		"",
		"",
	},
//145
	{
		"l16o4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5a",
		"v13l8o5f+2f+age",
		"v11l8o3dc+o2bal4o3de",
		"",
		"",
		"",
	},
	{
		"l16o4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5a",
		"l8o5dc+o4bal4o5de",
		"l8o3f+2f+age",
		"",
		"",
		"",
	},
//147
	{
		"l16o4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5a",
		"l8o5g2f+8.g16e8.f+16",
		"l8o3dc+o2bal4o3de",
		"",
		"",
		"",
	},
	{
		"l16o4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5a",
		"v11l8o5dc+o4bal4o5de",
		"v13l8o3g2f+8.g16e8.f+16",
		"",
		"",
		"",
	},
//149
	{
		"l16o4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao4ao5ao5c+o6c+o5c+o6c+",
		"l8o5f+2f+age",
		"l8o3dc+o2bal4o3do2a+",
		"",
		"",
		"",
	},
	{
		"v13l4o6do5ddf+16e8.",
		"v13l4o5do4ff+g",
		"l4o4dv13o3g+ao5c+",
		"",
		"",
		"",
	},
	{
		"l4o5dr4r2",
		"v11l16o4dc+dc+dc+dc+def+gabo5c+d",
		"v14l8o2do3ddddddd",
		"",
		"",
		"",
	},
//152
	{
		"v11l16o4ed+ed+ed+ed+ef+gabo5cde",
		"l8o5d2c8.o4b16a8.g16",
		"l8o2do3ddddddd",
		"",
		"",
		"",
	},
	{
		"l8o5e2d8.c16o4b8.a16",
		"l16o4f+e+f+e+f+e+f+e+f+gabo5cdef+",
		"l8o2do3ddddddd",
		"",
		"",
		"",
	},
//154
	{
		"l16o4gf+gf+gf+gf+gabo5cdef+g",
		"l8o5f+2e.d16c.o4b16",
		"l8o2do3ddddddd",
		"",
		"",
		"",
	},
	{
		"l8o5g2f+.e16d.c16",
		"v12l16o4ag+ag+ag+ag+abo5cdefg+a",
		"l8o2do3ddddddd",
		"",
		"",
		"",
	},
//156
	{
		"v12l16o4ba+ba+ba+ba+bo5cdef+ga+b",
		"v12l16o4gf+gf+gf+gf+gabo5c+def+g",
		"l8o2do3ddddddd",
		"",
		"",
		"",
	},
	{
		"v13l16o4gf+gf+gf+gf+gabo5c+def+g",
		"v13l16o4ed+ed+ed+ed+ef+gabo5c+d+e",
		"l8o3dddddddd",
		"",
		"",
		"",
	},
//158
	{
		"v13l8o6do5f+o6do5f+o6do5f+o6do5f+",
		"v13l16o4f+e+f+e+f+e+f+e+f+gabo5c+def+",
		"v13l16o3dcdcdcdcdef+gabo4c+d",
		"",
		"",
		"",
	},
	{
		"l8o6do5f+o6do5f+o6do5f+o6do5f+",
		"l16o4dc+dc+dc+dc+def+gabo5c+d",
		"l16o2ba+ba+ba+ba+bo3c+def+gab",
		"",
		"",
		"",
	},
//160
	{
		"l8o6do5go5bdbdbd",
		"l16o3ba+ba+ba+ba+bo4c+def+gab",
		"l16o2gf+gf+gf+gf+gabo3c+def+g",
		"",
		"",
		"",
	},
	{
		"l8o5bego4bo5go4bo5go4b",
		"l16o3gf+gf+gf+gf+gabo4c+def+g",
		"l16o2ed+ed+ed+ed+ef+gabo3c+de",
		"",
		"",
		"",
	},
//162
	{
		"l16o5c+dedc+o4abo5c+def+ef+edc+",
		"l16o4c+dedc+o3abo4c+def+ef+edc+",
		"l4o3c+r4dr4",
		"",
		"",
		"",
	},
	{
		"l16o4bo5c+dc+o4bgabo5c+dedc+o4bag",
		"l16o3bo4c+dc+o3bgabo4c+dedc+o3bag",
		"l4o2br4o3c+r4",
		"",
		"",
		"",
	},
//164
	{
		"l16o4f+agf+gabo5c+def+gabo6c+d",
		"l16o3f+agf+gabo4c+def+gabo5c+d",
		"l4o3dr4o2br8",
		"",
		"",
		"",
	},
	{
		"l16o5bo6c+o5bagf+edc+dc+o4bagf+e",
		"l16o4bo5c+o4bagf+edc+dc+o3bagf+e",
		"l4o2gr4ar4",
		"",
		"",
		"",
	},
//166
	{
		"l16o4do3ao4do3ao4f+daf+o5do4ao5f+da16r16a16r16",
		"l4o5dr2d16r16c16r16",
		"l4o3dr2o4d16r16c16r16",
		"",
		"",
		"",
	},
	{
		"l8o5ao4b16r16b4.o5d+16e16g16r16g16r16",
		"l16o4bo5co4ba+bo5co4abgaf+gef+gg+",
		"l16o3bo4co3ba+bo4co3abgaf+gef+gg+",
		"",
		"",
		"",
	},
//168
	{
		"l8o5go4a16r16a4.o5c+16d16f+16r16f+16r16",
		"l16o4abag+abgaf+gef+def+d",
		"l16o3abag+abgaf+gef+def+d",
		"",
		"",
		"",
	},
	{
		"l8o5f+o4g16r16g4.o5b+16o6c+16e16r16e16r16",
		"l16o4gagf+go5gf+gef+d+ecdee+",
		"l16o3gagf+go4gf+gef+d+ecdee+",
		"",
		"",
		"",
	},
//170
	{
		"l8o6eo5f+16r16f+4.a+16b16o6d16r16d16r16",
		"l16o5f+gf+e+f+gef+de+c+do4bagf+",
		"l16o4f+gf+e+f+gef+de+c+do3bagf+",
		"",
		"",
		"",
	},
	{
		"l8o6do5er8er8er8e",
		"l8o3go2go3go2go3go2go3go2g",
		"l16o4egbgo5do4bgbegbgo5do4bgb",
		"",
		"",
		"",
	},
//172
	{
		"l8o6do5fr8fr8fr8f",
		"l8o3g+o2g+o3g+o2g+o3g+o2g+o3g+o2g+",
		"l16o4fg+bg+o5do4bg+bfg+bg+o5do4bg+b",
		"",
		"",
		"",
	},
	{
		"l16o5f+do4ao5df+daf+o6do5af+daf+do4a",
		"l4o5d4r4r2",
		"l4o3a4r4r2",
		"",
		"",
		"",
	},
//174
	{
		"l4o5f+2 l32ef+ef+ef+ef+ef+ef+ l16de",
		"l16o3ao4ag+abag+ao3go4gf+gagf+g",
		"v14o3l8aaaao2aaaa",
		"",
		"",
		"",
	},
	{
		"l4o6d2c+o5b",
		"l4o5d2c+o4b",
		"o3bv13r4r2",
		"",
		"",
		"",
	},
	{
		"l4o5g+a.l8dgf+",
		"l8o4g+l8fee-ddgf+",
		"l8r8o4dc+co3br4",
		"",
		"",
		"",
	},
//177
	{
		"l4o5e+f+.l8o4bo5ed",
		"l8o4e+dc+co3bbo4ed",
		"l8r8o3ba+ag+4g4",
		"",
		"",
		"",
	},
	{
		"l4o5c+dl8f+ec+o4a",
		"l4o3a2bo4e",
		"l4o3gf+go2a",
		"",
		"",
		"",
	},
	{
		"l16o5f+o6do5f+o6do5f+o6do5f+o6do5f+o6do5f+o6do5f+o6do5f+o6d",
		"l4o4d2c+o3b",
		"l4o3d2c+o2b",
		"",
		"",
		"",
	},
//180
	{
		"l16o5eo6do5eo6d o5eo6c+o5eo6c+ o5f+o6co5f+o6c o5gbgb",
		"l4o3g+a.l8dgf+",
		"l4o2g+a.l8dgf+",
		"",
		"",
		"",
	},
	{
		"l16o5c+bc+b c+a+c+a+ d+ad+a eg+eg+",
		"l4o3e+f+.l8o2bo3ed",
		"l4o2e+f+.l8o1bo2ed",
		"",
		"",
		"",
	},
//182
	{
		"l4o5gf+l8o4gbo5ed",
		"l16o2c+o3c+o2c+o3c+ o2do3do2do3d o2go3go2go3g o2go3go2go3g",
		"l4o5edr2",
		"",
		"",
		"",
	},
	{
		"l4o5c+d",
		"l16o2go3go2go3g l4f+ l8o4f+b-o5ed",
		"l16r4o2f+o3f+o2f+o3f+ o2go3go2go3g o2go3go2go3g",
		"",
		"",
		"",
	},
//184
	{
		"l4o5c+f+l8o4gb-o5ed",
		"l4o4b-o5dr2",
		"l16o2go3go2go3go2f+o3f+o2f+o3f+o2go3go2go3go2go3go2go3g",
		"",
		"",
		"",
	},
	{
		"l4o5c+a+.l8bo6c+d",
		"l4o4b-o5d.l8def",
		"l16o2go3go2go3go2f+o3f+o2f+o3f+o2go3go2go3go2g+o3g+o2g+o3g+",
		"",
		"",
		"",
	},
//186
	{
		"v14o4f+f+aaggeev13",
		"l4o5f+age",
		"l16o2ao3ag+a o2ao3ag+a o2ao3ag+a o2ao3ag+a",
		"",
		"",
		"",
	},
	{
		"v13l16o5d4r16o6c+dc+decdo5bo6co5ab",
		"v14l8o4f+f+f+f+gabo5c",
		"v14l8o3do2do3dddddd",
		"",
		"",
		"",
	},
//188
	{
		"v13l16o5g4r16gababgaf+gef+",
		"v14l8o5do4bgf+ec+de",
		"v14l8o3do2do3dddddd",
		"",
		"",
		"",
	},
	{
		"l16o5d4r16o6c+dc+decdo5bo6co5ab",
		"l8o4f+f+f+f+gabo5c",
		"l8o3do2do3dddddd",
		"",
		"",
		"",
	},
//190
	{
		"l16o5g4r16gababgaf+gef+",
		"l8o5do4bgf+ec+de",
		"l8o3do2do3dddddd",
		"",
		"",
		"",
	},
	{
		"v13l16o5do4f+ao5df+o4ao5df+ar16ar16c+r16c+r16",
		"v13l16o4do3f+ao4df+o3ao4df+ar16ar16c+r16c+r16",
		"v13l4o3dr2o2a",
		"",
		"",
		"",
	},
//192
	{
		"l4o5dr2c+16r16c+16r16",
		"l16o5do4f+ao5df+o4ao5df+ar16ar16o4ar16ar16",
		"l16o2do3f+ao4df+o3ao4df+ar16ar16o2ar16o2ar16",
		"",
		"",
		"",
	},
	{
		"l16o5do4df+ao5do4f+ao5df+o4ao5df+af+af+",
		"l16o2d8f+ao3do2f+ao3df+o2ao3df+af+af+",
		"l16o4d4r16o3f+ao4df+o3ao4df+af+af+",
		"",
		"",
		"",
	},
	{
		"l4o5do6do4dr4",
		"l4o3do4do3dr4",
		"l4o2do3do2dr4",
		"",
		"",
		"",
	},
};

void SetUpMML(MMLSegmentPlayer &player)
{
// At this time, only first six channels.  Eventually I'm going to make it more channels.
	for(int i=0; i<sizeof(MML)/sizeof(MML[0]); ++i)
	{
		player.AddSegment(
			MML[i][0],
			MML[i][1],
			MML[i][2],
			MML[i][3],
			MML[i][4],
			MML[i][5]
		);
	}
}