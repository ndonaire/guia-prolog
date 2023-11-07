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

menu(Entrada, PlatoPrincipal, Postre) :-
    entrada(Entrada),
    (carne(PlatoPrincipal); pescado(PlatoPrincipal)),
    postre(Postre).

%menu(E,PP,P), !. Devuelve primer combinación
%Resultado: paella, filete_de_cerdo, flan
%menu(E,PP,P), pescado(PP), !. Devuelve primer combinación con PP pescado (excluye carne)
%paella, trucha, flan
%menu(E,PP,P), !, pescado(PP). Devuelve la primer combinacion, y que la misma tenga pescado (devuelve false porque la primera es con carne)
%false


