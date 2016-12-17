% #2 Mystery party (Gensler pp. 17)

% Given facts
nm(a). % Alice doesn't love money
ym(b). % Bob loves money
nr(b). % Bob isn't the richest person at the party
yk(c). % Carol knew where the money was
yw(d). % David works for Herman
nn(d). % David isn't the nastiest person at the party

% Given rules
n_stole(X) :- nm(X). % All who stole money love money
% n_stole(X) :- yr(X). % The richest person at the party didn't steal the money
% n_stole(X) :- nk(X). % All who stole money knew where the money was
y_stole(X) :- yh(X). % All who hate herman stole money
% y_stole(X) :- yn(X). % The nastiest person at the party stole money
yh(X)      :- yw(X). % All who work for herman hate herman
