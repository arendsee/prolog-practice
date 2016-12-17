% I am looking through the book 'Introduction to Logic' by Harry Gensler
% The examples in this script come from there.

% #1 If you're in Europe, you're in France

place(you,europe).
place(sally,paris).
place(paris,france).
place(france,europe).

% e.g. isin(sally,europe).
isin(X,Z) :- place(X,Z).
isin(X,Z) :- place(X,Y) , isin(Y,Z).
