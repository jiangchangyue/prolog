member(tony,alpineclud).
member(mike,alpineclud).
member(john,alpineclud).
like(tony,rain).
like(tony,snow).
climber(X):-dislike(X,rain).
skier(X):-like(X,snow).
dislike(mike,X):-like(tony,X).
like(mike,X):-dislike(tony,X).
member(X,alpineclud):-skier(X);climber(X).
answer(X):-member(X,alpineclud),climber(X),\+skier(X).

