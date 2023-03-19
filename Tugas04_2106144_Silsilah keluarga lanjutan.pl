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

