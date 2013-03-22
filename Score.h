#pragma once

#ifndef _SCORE_H_
#define _SCORE_H_

class Score
{
public:
	Score(void);
	~Score(void);

	void IncrimentScore();
	int GetScore();

	// we could write this to a text file so that i can be loaded for a menu to show high score?
private:

	int _score;

};

#endif