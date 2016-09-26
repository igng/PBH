model;

param N >= 2 integer;
param n integer;
let N := 32;
let n := N*3;

var x{i in 1 .. n};

minimize fx:
	sum{i in 1 .. N-1, j in i+1 .. N} ((1/((sqrt(sum{k in 1 .. 3} ((x[(i-1)*3 + k] - x[(j-1)*3 + k])^2)))^12)) - (2/((sqrt(sum{k in 1 .. 3} ((x[(i-1)*3 + k] - x[(j-1)*3 + k])^2)))^6)))
