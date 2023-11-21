parcial1(ana,7).
parcial1(juan,7).
parcial1(julio, 2).
parcial1(maria, 10).

parcial2(ana,9).
parcial2(juan,7).
parcial2(julio, 4).
parcial2(maria, 2).
parcial2(nicole, 10).

%Version 1: Se desea obtener:
%1. a. El listado de los alumnos que promocionan la materia 
promocionan(Alumno):-
    parcial1(Alumno,N1),
    parcial2(Alumno,N2),
    N1 >= 7, N2 >=7. 

%b. El mismo listado pero esta vez incluyendo la nota final (promedio de los dos parciales) para cada uno 
promocionannota(Alumno,Nota):-
    parcial1(Alumno,N1),
    parcial2(Alumno,N2),
    N1 >= 7, N2 >=7,
    Nota is (N1+N2) / 2.
%2. El listado de los alumnos que recursan la materia. 
recursan(Alumno):-
    parcial1(Alumno,N1),
    parcial2(Alumno,N2),
    (N1 < 4; N2 < 4). 

%3. El listado de los alumnos que obtendrán la cursada.
alumno(Alumno):-parcial1(Alumno,_),parcial2(Alumno,_).
obtienencursada(Alumno):-
    alumno(Alumno),
    \+ promocionan(Alumno),
    \+ recursan(Alumno).

% 4. A fin de entregar la medalla al mérito, encontrar de aquellos que 
% promocionan (1b), el o los alumnos con mayor nota final (nombre y nota) 
nota(Alumno, Nota):-
    parcial1(Alumno, P1),
    parcial2(Alumno, P2),
    Nota is (P1 + P2) / 2.
producto_cartesiano(A, B):-
    nota(_, A), nota(_, B).
seleccion(A, B):-
    producto_cartesiano(A, B),
    A < B.
proyeccion(A):-
    seleccion(A, _).
maxnota(A):- nota(_,A), \+proyeccion(A).

% 5. Ahora se desea obtener cuales fueron las dos notas más altas, 
% considerando simplemente a la nota como el promedio de la nota de parcial1 y parcial2. 
% Solo interesan los números. Un tip es pensar la resolución en dos etapas, la más alta, y después la más alta de lo restante
producto_cartesiano2(A,B):-
    proyeccion(A), proyeccion(B).
seleccion2(A,B):- producto_cartesiano2(A,B), A < B.
proyeccion2(A):- seleccion2(A, _).
max_notas_2(A):- nota(_,A), \+proyeccion2(A).

%Versión 2
%El listado se compone de al menos una nota para cada alumno. 
%En caso de que algún alumno adeude uno de los parciales
% (es decir no tenga un hecho relacionado a su parcial), 
% su condición es ausente. 
% No se toman en cuenta quienes no dieron ninguno de los parciales.
alumnostotales(Alumno):-(parcial1(Alumno,_);parcial2(Alumno,_)).
ausentes(Alumno):-
    alumnostotales(Alumno),
    \+alumno(Alumno).
