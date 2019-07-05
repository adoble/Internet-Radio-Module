/*
 * Groups.h
 *
 *  Created on: 13 May 2019
 *      Author: Andrew
 */

#ifndef GROUPS_H_
#define GROUPS_H_

#include <Arduino.h>

#include "Group.h"

//TODO
//#include <string.h>
// iostream required for isalpha() ->TODO  change to isAlpha
#include <iostream>
////#include <fstream>
//#define NULL nullptr
//#include <Arduino.h>

class Groups {
public:
	//Groups();
	Groups(int, int);
	virtual ~Groups();

	void setup(char*, int);

	int numberGroups();
	Group* addGroup(char*);
	void begin();
	Group* next();

private:
	Group** pGroups;        // Dynamic array of pointers to groups
	int nGroups;            // Number of groups
	int groupBufferSize;    // The current size of the buffer used to hold the groups.
	int currentGroup;       // Group iterator
	int maxStationsInGroup; // The maximum number of stations allowed in a group
	int iterator;          // Used to iterate the groups contained in a object of this class.

};

#endif /* GROUPS_H_ */
