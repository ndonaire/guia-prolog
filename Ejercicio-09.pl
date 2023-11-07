pais_superficie(argentina,1000).
pais_superficie(brasil,2000).
pais_superficie(chile,1).
pais_superficie(colombia,900).

%Basado en el ejemplo de paises.pl visto en clase, 
%complete la base de conocimientos pais_superficie(P,A) 
%con todos los países de latinoamérica y codifique las reglas prolog 
%que permitan encontrar el país de mayor superficie.

producto_cartesiano(X,Y):-
    pais_superficie(_,X),
    pais_superficie(_,Y).

seleccion(X,Y):- producto_cartesiano(X,Y), X < Y.
proyeccion(X):- seleccion(X,_).
max_superficie(X):- pais_superficie(_,X), \+proyeccion(X).

