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

bebida(vino).
bebida(cerveza).
bebida(agua_mineral).
%Completar el programa "menú" de manera que una comida esté 
%formada también por la elección de una bebida, a elegir entre vino,
% cerveza o agua mineral.
menu(Entrada, PlatoPrincipal,Bebida, Postre) :-
    entrada(Entrada),
    (carne(PlatoPrincipal); pescado(PlatoPrincipal)),
    bebida(Bebida),
    postre(Postre).

