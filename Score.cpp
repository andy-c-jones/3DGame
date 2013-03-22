#include "Score.h"


Score::Score(void)
{
	_score = 0;
}


Score::~Score(void)
{
}


void Score::IncrimentScore()
{
	_score += 10;
}

int Score::GetScore()
{
	return _score;

}

