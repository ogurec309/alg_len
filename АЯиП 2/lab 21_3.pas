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
Program lab_20;
const
  Nmax=10;
  
type
  Matrix=array[1..Nmax, 1..Nmax] of real;
  Vector=array[1..10] of real;
  func=Function(x:integer; A:Vector ):real;
  
var
    A, B :Matrix;// матрицы A, B
    n1, n2 :integer;// размер матрицы
    i,j:integer;
    C:real;
    Ma, Mi :integer;
    
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
  
Function KritA (n: integer; A:Vector):real;
var
  i:integer;
  k:real;
begin
  k:=0;
  for i:=1 to n do
    k:=k+A[i];
  k:=k/n;
  KritA:=k;
end;
  
Function KritB (n: integer; A:Vector):real;
var
  i:integer;
  k:real;
begin
  k:=0;
  for i:=1 to n do
    if not(A[i]<0) then
      k:=k+1;
  KritB:=k;
end;

Function MM(n: integer; A:Matrix; f:func):integer;//Ma*10+Mi для того чтобы влезло в 1 число
  var
    C:vector;
    i,j:integer;
    aa,ii:real;
    max,min:real;
  begin
    max:=-100;
    min:=100;
    for i:=1 to n do
    begin
      for j:=1 to n do
        C[j]:=A[i][j];
      aa:=f(n,C);
      ii:=f(n,C);
      if max<aa then
      begin
        max:=aa;
        Ma:=i;
      end;
      if min>ii then
      begin
        min:=ii;
        Mi:=i;
      end;
    end;
    MM:=Ma*10+Mi;
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
  
  Ma:=MM(n1,A,KritA);
  Mi:=Ma mod 10;
  Ma:=Ma div 10;
  for j:=1 to n1 do
    begin
      C:=A[Ma][j];
      A[Ma][j]:=A[Mi][j];
      A[Mi][j]:=C;
    end;
  
  Ma:=MM(n2,B,KritB);
  Mi:=Ma mod 10;
  Ma:=Ma div 10;
  for j:=1 to n2 do
    begin
      C:=B[Ma][j];
      B[Ma][j]:=B[Mi][j];
      B[Mi][j]:=C;
    end;
  
  writeln('преобразованные матрицы A и B:');
  Output(n1,A);
  Output(n2,B);
end.