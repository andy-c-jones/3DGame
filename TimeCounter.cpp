#include "TimeCounter.h"


TimeCounter::TimeCounter()
{
	_minutes = 0;
	_seconds = 0;
	_pCharBuffer = new char[16];
	_buffer2 = new char[16];
}


TimeCounter::~TimeCounter()
{
}

void TimeCounter::SetTime(int minutes, int seconds)
{
	_minutes = minutes;
	_seconds = seconds;
}


void TimeCounter::Decriment()
{
	_seconds--;

	if (_seconds <0)
	{
		_minutes--;
		_seconds = 60;
	}
}


char* TimeCounter::GetMinutes()
{
	std::ostringstream out;
	out << _minutes;

	char* output =  strdup(out.str().c_str());
	return output;
	
}

char* TimeCounter::GetSeconds()
{
	std::ostringstream out;
	out << _seconds;

	char* output =  strdup(out.str().c_str());
	return output;

}

std::string TimeCounter::GetCountDown()
{
	sprintf(_pCharBuffer, "%i", _minutes);
	sprintf(_buffer2, "%i", _seconds);

	_stringFps = "Time Left  " + std::string(_pCharBuffer)+ ":"+std::string(_buffer2);

	return _stringFps;
}