cha(peter, jason).
cha(peter, daisy).
cha(peter, ben).
cha(peter, mark).
cha(jason, bin).
cha(jason, michael).
cha(steven, ivan).
cha(steven, thomas).
cha(ben, jenifer).
cha(ben, jenny).
cha(mark, tracy).
cha(mark, justin).

me(mary, jason).
me(mary, daisy).
me(mary, ben).
me(mary, mark).
me(kelly, bin).
me(kelly, michael).
me(daisy, ivan).
me(daisy, thomas).
me(susan, jenifer).
me(susan, jenny).
me(jesse, tracy).
me(jesse, justin).

nam(peter).
nam(jason).
nam(bin).
nam(michael).
nam(steven).
nam(kevin).
nam(ivan).
nam(ben).
nam(mark).
nam(justin).

nu(mary).
nu(kelly).
nu(betty).
nu(daisy).
nu(alissa).
nu(thomas).
nu(susan).
nu(jenifer).
nu(jenny).
nu(jesse).
nu(tracy).

tuoi(peter, 70).
tuoi(mary, 68).
tuoi(jason, 43).
tuoi(betty, 43).
tuoi(kelly, 38).
tuoi(bin, 18).
tuoi(michael, 17).
tuoi(steven, 50).
tuoi(daisy, 41).
tuoi(kevin, 55).
tuoi(ivan, 22).
tuoi(alissa, 20).
tuoi(thomas, 18).
tuoi(ben, 40).
tuoi(susan, 35).
tuoi(jenifer, 16).
tuoi(jenny, 15).
tuoi(mark, 38).
tuoi(jesse, 38).
tuoi(tracy, 10).
tuoi(justin, 9).

chong(peter, mary).
chong(jason, kelly).
chong(jason, betty).
chong(steven, daisy).
chong(kevin, daisy).
chong(ivan, alissa).
chong(ben, susan).
chong(mark, jesse).

anhtrai(X, Y) :- nam(X), cha(Z, Y), cha(Z, X), me(U, X), me(U, Y), tuoi(X, T1), tuoi(Y, T2), T1 > T2.
emtrai(X, Y) :- nam(X), cha(Z, Y), cha(Z, X), me(U, X), me(U, Y), tuoi(X, T1), tuoi(Y, T2), T1 < T2.
chigai(X, Y) :- nu(X), cha(Z, Y), cha(Z, X), me(U, X), me(U, Y), tuoi(X, T1), tuoi(Y, T2), T1 > T2.
emgai(X, Y) :- nu(X), cha(Z, Y), cha(Z, X), me(U, X), me(U, Y), tuoi(X, T1), tuoi(Y, T2), T1 < T2.
chu(X, Y) :- cha(Z, Y), emtrai(X, Z).
bac(X, Y) :- cha(Z, Y), anhtrai(X, Z).
cau(X, Y) :- me(Z, Y), anhtrai(X, Z).
cau(X, Y) :- me(Z, Y), emtrai(X, Z).
co(X, Y) :- cha(Z, Y), chigai(X, Z).
co(X, Y) :- cha(Z, Y), emgai(X, Z).
di(X, Y) :- me(Z, Y), chigai(X, Z).
di(X, Y) :- me(Z, Y), emgai(X, Z).
mo(X, Y) :- cau(Z, Y), chong(Z, X).
thim(X, Y) :- chu(Z, Y), chong(Z, X).
bacgai(X, Y) :- bac(Z, Y), chong(Z, X).
ongnoi(X, Y) :- cha(Z, Y), cha(U, Z).
ongngoai(X, Y) :- me(Z, Y), cha(U, Z).
banoi(X, Y) :- cha(Z, Y), me(U, Z).
bangoai(X, Y) :- me(Z, Y), me(U, Z).
chachong(X, Y) :- chong(Z, Y), cha(U, Z).
mechong(X, Y) :- chong(Z, Y), me(U, Z).
chavo(X, Y) :- chong(Y, Z), cha(U, Z).
mevo(X, Y) :- chong(Y, Z), me(U, Z).
