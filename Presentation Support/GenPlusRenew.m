function mpc = GenPlusRenew
%CASE5  Power flow data for modified 5 bus, 5 gen case based on PJM 5-bus system
%   Please see CASEFORMAT for details on the case file format.
%
%   Based on data from ...
%     F.Li and R.Bo, "Small Test Systems for Power System Economic Studies",
%     Proceedings of the 2010 IEEE Power & Energy Society General Meeting

%   Created by Rui Bo in 2006, modified in 2010, 2014.
%   Distributed with permission.

%   MATPOWER
%   $Id: case5.m 2324 2014-05-23 18:01:41Z ray $

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
    1   2   250 0   0   0   1   1   0   230 1   2 0;
    2   2   250 0   0   0   1   1   0   230 1   2 0;
    3   1   350 0   0   0   1   1   0   230 1   2 0;
    4   2   250 0   0   0   1   1   0   230 1   2 0;
    5   3   350 0   0   0   1   1   0   230 1   2 0;
    
    
    
    
    
% 	1	2	0	0	0	0	1	1	0	230	1	1.1	0.9;
% 	2	1	300	98.61	0	0	1	1	0	230	1	1.1	0.9;
% 	3	2	300	98.61	0	0	1	1	0	230	1	1.1	0.9;
% 	4	3	400	131.47	0	0	1	1	0	230	1	1.1	0.9;
% 	5	2	0	0	0	0	1	1	0	230	1	1.1	0.9;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1   0   0   4000   0   1   0   1   4000 0  0   0   0   0   0   0   0   0   0   0   0;
	2   0   0   4000   0   1   0   1   4000 0  0   0   0   0   0   0   0   0   0   0   0;
    4   3   0   15   0   1   0   1   15 0  0   0   0   0   0   0   0   0   0   0   0;
    5   2  0   20   0   1   0   1   20 15  0   0   0   0   0   0   0   0   0   0   0;    
    
    
];


%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	2	0.1	0.1 0	10000	10000	10000	0	0	1	-360	360;
	2	3	0.1 0.1   0   50000  50000  50000 	0	0	1	-360	360;
	1	5	0.1 0.1  0   60000  60000  60000 	0	0	1	-360	360; 
    3	5	0.1 0.1  0   60000  60000  60000 	0	0	1	-360	360;    
	4	5	0.1 0.1  0   60000  60000  60000 	0	0	1	-360	360;
    2	4	0.1 0.1  0   60000  60000  60000 	0	0	1	-360	360;    


];

%%-----  OPF Data  -----%%
%% area data
%	area	refbus
mpc.areas = [
	1	1;
];

%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	1   0   0   4   0 0    10  0    20 0    100 0 ;
    1   0   0   4   0 0    10  0    20 0    100 0 ;
    1	0	0	4   0 20.0 5   25.0 10 42.5 15 70.0 ;
    1	0	0	4   0 12.5 10  17.5 20 21.5 30 27.5 ;
    
	
	%2	0   0   3   0.04   9.1  1.6;
];