%1.Codifique en prolog las reglas necesarias para obtener el término N en la serie de Gauss
suma_sucesiva(0,0).
suma_sucesiva(N,Resultado):-
    N > 0,
    N1 is N - 1 ,
    suma_sucesiva(N1, Parcial1),
    Resultado is N + Parcial1.

gauss(N,Termino):-
    suma_sucesiva(N, Suma),
    Termino is Suma.   
    
%2. Codifique en prolog las reglas necesarias para obtener el término N en la serie de Fibonacci (sin, y con mejora)
fibonacci(1,1).
fibonacci(2,1).
fibonacci(N,Resultado):-
    N > 2, 
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1 , Parcial1), 
    fibonacci(N2 , Parcial2), 
    Resultado is Parcial1 + Parcial2.

fibonacciOptimizado(0,0).
fibonacciOptimizado(N, Valor):-
    fibonacciOptimizado(N, Valor,_).

fibonacciOptimizado(1,1,0). %Tail Recursion :) 
fibonacciOptimizado(N, Valor,Parcial1):-
	N > 1,
    N1 is N - 1,
    fibonacciOptimizado(N1,Parcial1, Parcial2),
    Valor is Parcial1 + Parcial2.

%3. Codifique en prolog las reglas necesarias para obtener el factorial de un número natural N.
factorial(0, 1).               % Regla: caso base
factorial(N, Resultado):-      % Regla: caso recursivo
    N > 0,                     % para todo N mayor a 0
    N1 is N - 1,               % se define N1 como N - 1
    factorial(N1, Parcial),    % se invoca la recursividad, preguntando por el valor un paso detrás
    Resultado is Parcial * N.

%4. Codifique en prolog las reglas necesarias para obtener el producto de dos numeros X e Y, aplicando sumas sucesivas.
producto(0,_,0).
producto(X,Y,Resultado):-
    X > 0,
    X1 is X - 1,
    producto(X1,Y,Parcial1),
    Resultado is Y + Parcial1.

%5. Codifique en prolog las reglas necesarias para obtener la potencia N de un numero X aplicando multiplicaciones sucesivas.
potencia(_,0,1).
potencia(X,Y,Resultado):-
    Y > 0,
    Y1 is Y - 1,
    potencia(X,Y1,Parcial1),
    Resultado is X * Parcial1.

%6. Codifique en prolog las reglas necesarias para obtener la el cociente entre dos números a partir de restas sucesivas.
cociente(X,Y,0):- X < Y.
cociente(X,Y,Resultado):-
    X >= Y,
    X1 is X - Y,
    cociente(X1,Y,Parcial1),
    Resultado is Parcial1 + 1.

%7. Idem 6, pero que permita obtener el cociente y el resto. 
cociente_con_resto(X, Y, 0, X) :-  X < Y.
cociente_con_resto(X, Y, Resultado, Resto):-
    X >= Y,
    X1 is X - Y,
    cociente_con_resto(X1,Y,Parcial1,Resto),
    Resultado is Parcial1 + 1.

%Definir la relación mcd(X,Y,Z) que se verifique si Z es el máximo 
%común divisor entre X e Y. Por ejemplo: mcd(10,15,X).
mcd(0, Y, Y) :- Y > 0.
mcd(X, 0, X) :- X > 0.
mcd(X, Y, Z) :-
    X >= Y,
    Temp is X - Y,
    mcd(Temp, Y, Z).
mcd(X, Y, Z) :-
    X < Y,
    mcd(Y, X, Z).
    

    
    
    
    
    
    