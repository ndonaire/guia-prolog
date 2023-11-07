ventas1erSem(juancito, 1000).
ventas1erSem(pepe, 2000).
ventas1erSem(anita, 10000).
ventas1erSem(maria, 23000).
ventas1erSem(ñoqui, 0).

ventas2doSem(juancito, 1000).
ventas2doSem(pepe, 2000).
ventas2doSem(anita, 10000).
ventas2doSem(maria, 23000).
ventas2doSem(ñoqui, 10).

comisiones_anuales(Vendedor,Importe):-
    ventas1erSem(Vendedor,T1),
    ventas2doSem(Vendedor,T2),
    ((T1 >= 20000, T2 >= 20000, Importe is (T1 + T2) *20/100);
    (T1 < 20000, T1 > 0, T2 > 0, T2 < 20000, Importe is (T1 + T2) *10/100);
    ((T1 == 0; T2 == 0), Importe is (T1 + T2) *5/100)).

%Calcular comisiones:
%20% del total vendido en el año para aquellos vendedores que hayan tenido ventas en ambos semestres y cada una de ellas supera los $ 20000.
%10% del total vendido en el año para aquellos vendedores que hayan tenido ventas en ambos semestres, pero no superan los $ 20000 en alguno de estos.
%5% del total vendido para los vendedores que no registran ventas en algún semestre