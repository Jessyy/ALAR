/*
 *	Any Last Administrative Requests - i_benchmark.inc
 *		Benchmark setup
 *	
 *	Based on benchmark by Slice from http://forum.sa-mp.com/showthread.php?t=218491
 *		@released: 30/01/2011
 *	
 *	Note!
 *	1.Try and place all of your code inside the benchmarking functions, declare
 *		variables and such in-between the macros as well.
 *	2.Use this only for testing - it will freeze your server for a couple seconds
 *		(depending on the time you test).
 *	3.Don't do anything (music, videos, being in-game, etc.) that could compromise
 *		the benchmarking results - you can survive 2 seconds without those things.
 *	
 *	Copyright (c) 2015 [SNIP][zL]Jessyy
 */

#if defined _inc_benchmark_included
	#endinput
#endif
#define _inc_benchmark_included

#include <a_samp>

/*
 *  To avoid loose indentation warnings on compile
 */
#pragma tabsize		0

/*
 *  Mainly to make sure your code doesn't cause any performance issues for the server
 *  
 *  START_BENCH(1000);
 *  	floatdiv(5412.4121234, 2412.1111);
 *  FINISH_BENCH("floatdiv");
 */
#define START_BENCH(%0);	\
	{new __a=%0,__b=0,__c,__d=GetTickCount(),__e=1;do{}\
	while(__d==GetTickCount());__c=GetTickCount();__d=__c;while(__c-__d<__a||\
	__e){if(__e){if(__c-__d>=__a){__e=0;__c=GetTickCount();do{}while(__c==\
	GetTickCount());__c=GetTickCount();__d=__c;__b=0;}}{

#define FINISH_BENCH(%0);	\
	}__b++;__c=GetTickCount();}printf(" Bench for "\
	%0": executes, by average, %.2f times/ms.",floatdiv(__b,__a));}
