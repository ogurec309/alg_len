{лабораторная работа №21 задание 21 вар 17

Вариант 17.
В каждом варианте задания одну или несколько функций передавать в качестве параметров
других подпрограмм, используя с этой целью процедурный тип.
При выполнении заданий значения исходных данных выберите самостоятельно

Составить подпрограмму определения номеров строк матрицы с минимальной и максимальной
характеристиками. Для вычисления характеристики использовать подпрограмму-функцию.
В качестве характеристики рассмотреть следующие величины:
а) среднее арифметическое элементов каждой строки матрицы;
б) число положительных элементов в строке.
Поменять местами строки с максимальной и минимальной характеристиками типа «а»
в заданной матрице A и типа «б» в заданной матрице B.

программист: Потемкина Наталья гр. 145                 
Дата выполнения: 09.4.22}
Program lab_21;

const
  Nmax=10;
  
type
  Matrix=array[1..Nmax, 1..Nmax] of real;
  Vector=array[1..10] of real;
  
var
    A, B :Matrix;// матрицы A, B
    ka, kb:Vector;// критерии а, б
    n1, n2 :integer;// размер матрицы
    
Procedure Input(n: integer; var B:Matrix);
  var
      i,j:integer;
  begin
    for i:=1 to n do
      for j:=1 to n do
        read(B[i,j]);
  end;
  
Procedure Output(n: integer; A:Matrix);
  var
    i,j:integer;
  begin
    writeln;
    for i:=1 to n do
    begin
      writeln;
      for j:=1 to n do
        write(A[i][j], ' ');
    end;
  end;
  
Procedure KritA (n: integer; A:Matrix; var ka:Vector);
  var
    i,j:integer;
  begin
    for i:=1 to n do
      begin
        ka[i]:=0;
        for j:=1 to n do
          ka[i]:=ka[i]+A[i][j];
          ka[i]:=ka[i]/n;
      end;
  end;
  
Procedure KritB (n: integer; A:Matrix; var ka:Vector);
  var
    i,j:integer;
  begin
    for i:=1 to n do
      begin
        ka[i]:=0;
        for j:=1 to n do
          if not(A[i][j]<0) then
          ka[i]:=ka[i]+1;
      end;
  end;
  
Procedure MMi (n: integer; ka:Vector; var Mi :integer);
  var
    C:real;
    i,j:integer;
    ii:real;
  begin
    ii:=ka[1];
    Mi:=1;
    for i:=1 to n do
    begin
      if ka[i]<ii then
      begin
        ii:=ka[i];
        Mi:=i;
      end;
    end;
  end;

Procedure MMa (n: integer; ka:Vector; var Ma:integer);
  var
    C:real;
    i,j:integer;
    aa:real;
  begin
    aa:=ka[1];
     Ma:=1;
    for i:=1 to n do
    begin
      if ka[i]>aa then
      begin
        aa:=ka[i];
        Ma:=i;
      end;
    end;
  end;

Procedure rz (n: integer; ka:Vector; var A:Matrix);
  var
    i,j:integer;
    C:real;
    Ma, Mi :integer;
  begin
    MMa(n,ka, Ma);
    MMi(n,ka,Mi);
    for j:=1 to n do
    begin
      C:=A[Ma][j];
      A[Ma][j]:=A[Mi][j];
      A[Mi][j]:=C;
    end;
  end;

begin
  writeln('ввeдите размер квадратной матрицы A (не больше 10)');
    read(n1);
    writeln('а теперь вводите элементы матрицы');
    Input(n1,A);
    
    writeln('ввeдите размер квадратной матрицы B (не больше 10)');
    read(n2);
    writeln('а теперь вводите элементы матрицы');
    Input(n2,B);
    
    KritA(n1, A, ka);
    KritB(n2, B, kb);
    rz(n1,ka,A);
    rz(n2,kb,B);
    writeln('преобразованные матрицы A и B:');
    Output(n1,A);
    Output(n2,B);
end.