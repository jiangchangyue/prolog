wuli(phy200).
gongchen(eng300).
easy(X):-wuli(X).
difficult(X):-gongchen(X).
like(li,Y):-easy(Y).
dislike(li,Y):-difficult(Y).
like(wu,Y):-dislike(li,Y).
