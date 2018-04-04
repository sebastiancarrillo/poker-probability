function [] = probPoker()
clc;
clear all;
n=100000000;
f(1:7)=0;
for k=1: n
c2=0;


for i=1:5
    repetido=1;
    while(repetido==1)
        p13(i)=1 + floor(rand()*52);
        repetido=0;
        for j1=1:i-1
            if p13(i) == p13(j1)
                p13(i)=1 + floor(rand()*52);
                repetido=1;%%% revizar si funciona, si vuelve a j1=1
            end
        end
    end
    
    a(i)=mod(p13(i),13);
    palo(i)=floor( ( p13(i) -1 )/13 ) + 1;
    if a(i)==0
    a(i)=13;
    end
end
%%se cuentan las veces que tenemos una carta igual a otra, 1->unpar,
%%2->2pares, 3->untrio, 5->full, 6->poker       el caso 4 no se presenta
%%nunca por restricciones del juego
for i=1:4
    for j=i+1:5
        if a(i)==a(j)
        c2=c2+1;
        end
    end
end
f(c2+1)= f(c2+1)+1;
end
f(:)./n