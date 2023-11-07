%1.Codifique en prolog las reglas necesarias para obtener el término N en la serie de Gauss

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
%5. Codifique en prolog las reglas necesarias para obtener la potencia N de un numero X aplicando multiplicaciones sucesivas.
%6. Codifique en prolog las reglas necesarias para obtener la el cociente entre dos números a partir de restas sucesivas.
%7. Idem 6, pero que permita obtener el cociente y el resto. Definir la relación mcd(X,Y,Z) que se verifique si Z es el máximo común divisor entre X e Y. Por ejemplo: mcd(10,15,X).