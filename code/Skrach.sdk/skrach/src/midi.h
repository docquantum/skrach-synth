

typedef enum
{
	INVALID            	= 0x0,
	// Standard Message
	NOTE_OFF           = 0x80,
	NOTE_ON            = 0x90,
	POLY_PRESSURE      = 0xA0,
	CONTROL_CHANGE     = 0xB0,
	PROGRAM_CHANGE     = 0xC0,
	AFTERTOUCH         = 0xD0,
	PITCH_BEND         = 0xE0,

	// System Common Messages
	SYSTEM_EXCLUSIVE   = 0xF0,
	TIME_CODE          = 0xF1,
	SONG_POS_POINTER   = 0xF2,
	SONG_SELECT        = 0xF3,
	RESERVED1          = 0xF4,
	RESERVED2          = 0xF5,
	TUNE_REQUEST       = 0xF6,
	EOX                = 0xF7,

	// System Realtime Messages
	TIME_CLOCK         = 0xF8,
	RESERVED3          = 0xF9,
	START              = 0xFA,
	CONTINUE           = 0xFB,
	STOP               = 0xFC,
	RESERVED4          = 0xFD,
	ACTIVE_SENSING     = 0xFE,
	SYSTEM_RESET       = 0xFF
} StatusType;

typedef struct MidiMsg
{
	StatusType status;
	unsigned int pitch;
	unsigned int velocity;
} MidiMsg;

MidiMsg read_midi_msg(void);

char * status_type_to_string(StatusType status);

char * pitch_to_string(int pitch);
