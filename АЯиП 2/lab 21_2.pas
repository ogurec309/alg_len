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
  func=Function(x:integer; y:Vector):integer;
  
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

{Function KritA (n: integer; A:Matrix):Vector;
  var
    i,j:integer;
  begin
    for i:=1 to n do
      begin
        KritA[i]:=0;
        for j:=1 to n do
          KritA[i]:=KritA[i]+A[i][j];
          KritA[i]:=KritA[i]/n;
      end;
  end;{}
  
{Function KritB (n: integer; A:Matrix):Vector;
  var
    i,j:integer;
  begin
    for i:=1 to n do
      begin
        KritB[i]:=0;
        for j:=1 to n do
          if not(A[i][j]<0) then
          KritB[i]:=KritB[i]+1;
      end;
  end;{}
  
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
  
Function MMi(n: integer; ka:Vector):integer;
  var
    C:real;
    i,j:integer;
    ii:real;
  begin
    ii:=ka[1];
    MMi:=1;
    for i:=1 to n do
    begin
      if ka[i]<ii then
      begin
        ii:=ka[i];
        MMi:=i;
      end;
    end;
  end;
  
Function MMa(n: integer; ka:Vector):integer;
  var
    C:real;
    i,j:integer;
    aa:real;
  begin
    aa:=ka[1];
     MMa:=1;
    for i:=1 to n do
    begin
      if ka[i]>aa then
      begin
        aa:=ka[i];
        MMa:=i;
      end;
    end;
  end;
  
Function rz(n: integer; ka:Vector; mi:func; ma:func):Matrix;
  var
    i,j:integer;
    C:real;
    am, im :integer;
    ann:Matrix;
  begin
    im:=mi(n,ka);
    am:=ma(n,ka);
    for j:=1 to n do
    begin
      C:=ann[am][j];
      ann[am][j]:=ann[im][j];
      ann[im][j]:=C;
    end;
    rz:=ann;
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
    A:=rz(n1,ka,MMa, MMi);
    B:=rz(n2,kb,MMa, MMi);
    writeln('преобразованные матрицы A и B:');
    Output(n1,A);
    Output(n2,B);
end.