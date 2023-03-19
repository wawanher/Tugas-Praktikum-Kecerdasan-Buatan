menikahi(david,amy).
menikahi(amy, david).
orangtua(david,liza).
orangtua(david,john).
orangtua(amy,liza).
orangtua(amy,john).
menikahi(jack, karen).
menikahi(karen, jack).
orangtua(jack,susan).
orangtua(jack,ray).
orangtua(karen,susan).
orangtua(karen,ray).
menikahi(john,susan).
menikahi(susan,john).
orangtua(john,peter).
orangtua(john,mary).
orangtua(susan,peter).
orangtua(susan,mary).

pria(david).
pria(jack).
pria(john).
pria(ray).
pria(peter).

wanita(amy).
wanita(karen).
wanita(liza).
wanita(susan).
wanita(mary).

ayah(X,Y):-orangtua(X,Y),pria(X).
ibu(X,Y):-orangtua(X,Y),wanita(X).
suami(X,Y):-menikahi(X,Y),pria(X).
istri(X,Y):-menikahi(X,Y),wanita(X).
kakek1(D,M):-ayah(D,K), ayah(K,M).
nenek1(A,M):-ibu(A,J), ayah(J,M).
kakek2(J,M):-ayah(J,S), ibu(S,M).
nenek2(K,M):-ibu(K,S), ibu(S,M).


output dan pertanyaan:
1. siapa saja ayah dan anaknya siapa saja ?
?- ayah(X,Y).
X = david,
Y = liza ;
X = david,
Y = john ;
X = jack,
Y = susan ;
X = jack,
Y = ray ;
X = john,
Y = peter ;
X = john,
Y = mary ;

2. siapa saja ibu dan anaknya siapa saja ?
?- ibu(X,Y).
X = amy,
Y = liza ;
X = amy,
Y = john ;
X = karen,
Y = susan ;
X = karen,
Y = ray ;
X = susan,
Y = peter ;
X = susan,
Y = mary.

3. siapa suaminya amy, karen dan susan ?
?- suami(X,Y).
X = david,
Y = amy ;
X = jack,
Y = karen ;
X = john,
Y = susan ;

4. siapa istri david, jack dan john ?
?- istri(X,Y).
X = amy,
Y = david ;
X = karen,
Y = jack ;
X = susan,
Y = john.

5. siapa kakek1 peter dan amy?
?- kakek1(D,M).
D = david,
M = peter ;
D = david,
M = mary ;

6. siapa nenek1 peter dan amy?
?- nenek1(A,M).
A = amy,
M = peter ;
A = amy,
M = mary ;

7. siapa kakek2 peter dan amy?
?- kakek2(J,M).
J = jack,
M = peter ;
J = jack,
M = mary ;

8. siapa nenek2 peter dan amy?
?- nenek2(K,M).
K = karen,
M = peter ;
K = karen,
M = mary ;
