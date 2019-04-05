#ifndef __RECORDER_H__
#define __RECORDER_H__

#define ALSA_PCM_NEW_HW_PARAMS_API

#include <alsa/asoundlib.h>
#include <memory.h>

#define DSIZE	16			//data length
#define CH		2			//channels
#define FS		44100		//sample rate
#define FRAME	32			//temp buffer size = FRAME * CH * (DSIZE/8)
#define HW		"default"	//hardware id

/*this function will allocate memory for pbuf, so you should pass a null ptr*/
void record(int time_ms, char** pbuf);

#endif
