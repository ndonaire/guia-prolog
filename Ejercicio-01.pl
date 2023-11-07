entrada(paella).
entrada(gazpacho).
entrada(consomé).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

%1.¿Cuáles son los menús que ofrece el restaurante?
menu(Entrada, PlatoPrincipal, Postre) :-
    entrada(Entrada),
    (carne(PlatoPrincipal); pescado(PlatoPrincipal)),
    postre(Postre).
%2.¿Cuáles son los menús que tienen Consomé en las entradas?
consomé(PlatoPrincipal, Postre) :-
    entrada(consomé),
    (carne(PlatoPrincipal); pescado(PlatoPrincipal)),
    postre(Postre).
%3¿Cuáles son los menús que no contienen flan como postre?
sinflan(Entrada, PlatoPrincipal, Postre) :-
    entrada(Entrada),
    (carne(PlatoPrincipal); pescado(PlatoPrincipal)),
    postre(Postre), Postre \= flan.
