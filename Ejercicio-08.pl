entrada(paella,10).
entrada(gazpacho,20).
entrada(consomé,30).

carne(filete_de_cerdo,15).
carne(pollo_asado,20).

pescado(trucha,5).
pescado(bacalao,10).

postre(flan,15).
postre(helado,30).
postre(pastel,50).


producto_cartesiano_entrada(X, Y):-entrada(_, X), entrada(_, Y).
seleccion_entrada(X,Y):- producto_cartesiano_entrada(X,Y), X > Y.
proyeccion_entrada(X):- seleccion_entrada(X,_).
min_entrada(X):-entrada(_, X), \+ proyeccion_entrada(X).

producto_cartesiano_carne(X, Y):-carne(_, X), carne(_, Y).
seleccion_carne(X,Y):- producto_cartesiano_carne(X,Y), X > Y.
proyeccion_carne(X):- seleccion_carne(X,_).
min_carne(X):-carne(_, X), \+ proyeccion_carne(X).

producto_cartesiano_pescado(X, Y):-pescado(_, X), pescado(_, Y).
seleccion_pescado(X,Y):- producto_cartesiano_pescado(X,Y), X > Y.
proyeccion_pescado(X):- seleccion_pescado(X,_).
min_pescado(X):-pescado(_, X), \+ proyeccion_pescado(X).

producto_cartesiano_postre(X, Y):-postre(_, X), postre(_, Y).
seleccion_postre(X,Y):- producto_cartesiano_postre(X,Y), X > Y.
proyeccion_postre(X):- seleccion_postre(X,_).
min_postre(X):-postre(_, X), \+ proyeccion_postre(X).

menu(Entrada, PlatoPrincipal, Postre) :-
    min_entrada(Entrada),
    (min_carne(PlatoPrincipal); min_pescado(PlatoPrincipal)),
    min_postre(Postre).
%No se como sacar el minimo entre la carne y el pescado :(




