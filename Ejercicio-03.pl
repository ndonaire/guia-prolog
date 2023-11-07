hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(maría).
mujer(carla).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría) .
padre(pedro, carla) .
%Agregué a carla para probar las hermanas

% expresa que X es hijo o hija de Y.
niño(X,Y):- padre(Y,X).

% expresa que X es un hijo varón de Y.
hijo(X,Y):- 
    hombre(X),
    padre(Y,X).

% expresa que X es una hija de Y.
hija(X,Y):-
    mujer(X),
    padre(Y,X).

% expresa que X es hermano o hermana de Y.
hermano-o-hermana(X,Y):-
    padre(Z,X),
    padre(Z,Y),
    X\=Y.

% expresa que X es un hermano de Y.
hermano(X,Y):-
    padre(Z,X),
    padre(Z,Y),
    hombre(X),
    hombre(Y),
    X\=Y.

% expresa que X es una hermana de Y.
hermana(X,Y):- 
    padre(Z,X),
    padre(Z,Y),
    mujer(X),
    mujer(Y),
    X\=Y.
    

    
    
