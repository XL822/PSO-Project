function mpc = t_psse_case2
%T_PSSE_CASE2
%   PSS/E-29.0
%   Nine Bus System-Documentation
%   PowerFactory 14.1.7  Date: 12/2/2013, Time: 11:54:12 AM
%
%   Converted by MATPOWER 5.0 using PSSE2MPC on 01-May-2014
%   from 't_psse_case2.raw' using PSS/E rev 29 format.
%
%   WARNINGS:
%       Skipped 1 line of zone data.
%       Using default voltage magnitude limits: VMIN = 0.9 p.u., VMAX = 1.1 p.u.

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0	0	0	0	1	1.04	0	16.5	1	1.1	0.9;
	2	2	0	0	0	0	1	1.025	0	18	1	1.1	0.9;
	3	2	0	0	0	0	1	1.025	0	13.8	1	1.1	0.9;
	4	1	0	0	0	0	1	1.0387	0	230	1	1.1	0.9;
	5	1	125	50	0	0	1	1.01852	0	230	1	1.1	0.9;
	6	1	90	30	0	0	1	1.03535	0	230	1	1.1	0.9;
	7	1	0	0	0	0	1	1.06277	0	230	1	1.1	0.9;
	8	1	100	35	0	0	1	1.0541	0	230	1	1.1	0.9;
	9	1	0	0	0	0	1	1.06969	0	230	1	1.1	0.9;
	10	1	0	0	0	0	1	1.05999	0	230	1	1.1	0.9;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf	mu_Pmax	mu_Pmin	mu_Qmax	mu_Qmin
mpc.gen = [
	1	71.37	3.7	247.5	-247.5	1.04	247.5	1	247.5	0	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	2	163	13.04	192	-192	1.025	192	1	163.2	0	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	3	85	-4.2	128	-128	1.025	128	1	108.8	0	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	5	4	0.01	0.085	0.17599831	398.37	398.37	398.37	0	0	1	-360	360;
	6	4	0.017	0.092	0.15800701	398.37	398.37	398.37	0	0	1	-360	360;
	10	5	0.0288	0.1449	0.27540003	398.37	398.37	398.37	0	0	1	-360	360;
	9	6	0.039	0.17	0.35800075	398.37	398.37	398.37	0	0	1	-360	360;
	7	8	0.0085	0.072	0.14899814	398.37	398.37	398.37	0	0	1	-360	360;
	7	10	0.0032	0.0161	0.03060001	398.37	398.37	398.37	0	0	1	-360	360;
	8	9	0.0119	0.1008	0.20899731	398.37	398.37	398.37	0	0	1	-360	360;
	4	1	0	0.0576	0	250	250	250	1	150	1	-360	360;
	7	2	0	0.0625	0	200	200	200	1.04	150	1	-360	360;
	9	3	0	0.0586	0	150	150	150	1.04	150	1	-360	360;
];
