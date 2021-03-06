position(1).             %标记皇后的位置，只能是第一列到第八列中的一个
position(2).
position(3).
position(4).
position(5).
position(6).
position(7).
position(8).
if_then_else(P,Q,R):- call(P),!,Q.      
if_then_else(P,Q,R):- R.
list_append(A,B):- append([],[A],B).           %将数字A转化为列表B
last_one(A,X):- append(_,[A],X).         %A等于表X的最后一个元素
first_part(A,X):- last_one(B,X),append(A,[B],X).   %得到A等于表X的除最后一个元素的前部分表
safe(X,A,B):- 
    if_then_else((length(X,L),L=:=0),
                    (position(A)),
                    (position(A),last_one(C,X),A=\=C,A=\=C+B,A=\=C- B,B1 is B+1,first_part(Y,X),safe(Y,A,B1))).
queens(X,Y):-
    if_then_else((length(X,L),L<8),
                (safe(X,A,1),list_append(A,B),append(X,B,Z),queens(Z,Y)),
                (append(X,[],Y))).  
eight_queens([(_,Y1),(_,Y2),(_,Y3),(_,Y4),(_,Y5),(_,Y6),(_,Y7),(_,Y8)]):-
    queens([],X),
    append([],[Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8],X).