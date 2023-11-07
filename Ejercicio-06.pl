hombre(juan,alta,rubio,joven).
hombre(pedro,baja,castaño,adulta).
hombre(carlos,media,pelirrojo,vieja).
hombre(jose,alta,negro,joven).

mujer(ana,alta,rubio,joven).
mujer(maria,baja,castaño,adulta).
mujer(carla,media,pelirrojo,vieja).
mujer(josefa,alta,negro,joven).

gusta(juan,clásica,aventura,tenis).
gusta(pedro,pop,ciencia-ficción,tenis).
gusta(carlos,clásica,ciencia-ficción,natación).
gusta(jose,jazz,policíaca,jogging).
gusta(ana,clásica,aventura,tenis).
gusta(maria,pop,ciencia-ficción,tenis).
gusta(carla,clásica,ciencia-ficción,natación).
gusta(josefa,jazz,policíaca,jogging).

busca(juan,alta,rubio,joven).
busca(pedro,baja,castaño,adulta).
busca(carlos,media,pelirrojo,vieja).
busca(jose,alta,negro,joven).
busca(ana,alta,rubio,joven).
busca(maria,baja,castaño,adulta).
busca(carla,media,pelirrojo,vieja).
busca(josefa,alta,negro,joven).

conviene(X,Y):-
    hombre(X,AlturaH,CabelloH,EdadH),
    mujer(Y,AlturaM,CabelloM,EdadM),
    gusta(X,M1,L1,S1),
	gusta(Y,M2,L2,S2),
   	busca(X,A1,C1,E1),
	busca(Y,A2,C2,E2),
    M1 == M2,
	L1 == L2,
	S1 == S2,
	A1 == AlturaM,
	C1 == CabelloM,
	E1 == EdadM,
	A2 == AlturaH,
	C2 == CabelloH,
	E2 == EdadH.

	




