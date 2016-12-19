% Given the map below (borrowed from J.R. Fisher's tutorial)
%
%  ----------------------------.
%  |       |   2               |
%  |       |--------------.    |
%  |   1   |       3      |    |
%  |       |--------------|----|
%  |       |                   |
%  |-------|                   |
%  |  5    |       4           |
%  |_______|___________________|
%
% I can express an adjecency map with a set of `unit clauses` or facts.

adj(1,2).
adj(1,3).
adj(1,4).
adj(1,5).
adj(2,1).
adj(2,3).
adj(2,4).
adj(3,1).
adj(3,2).
adj(3,4).
adj(4,1).
adj(4,2).
adj(4,3).
adj(4,5).
adj(5,1).
adj(5,4).

% with just this I can make trivial queries like
% `?- adj(1,3).`
% or
% `?- adj(1,X).

% we can assign a color to each region of the map like so:

color(1, red).
color(2, yellow).
color(3, green).
color(4, yellow).
color(5, blue).

% now we can write a rule to check if two regions are in conflict

conflict(X,Y) :-
    adj(X,Y),
    color(X,C),
    color(Y,C).

% this can be used to check if any two particular regions conflict
% `?- conflict(1,2).`
% or to find all conflicts between all regions
% `?- conflict(A,B).`
