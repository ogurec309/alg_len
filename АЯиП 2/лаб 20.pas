{лабораторная работа №10 задание 20 вар 17

Вариант 17.Во всех вариантах заданий ввод исходных и вывод результирующих матриц
производить с помощью соответствующих процедур.
Составить процедуру определения среднего арифметического значения
элементов одномерного массива A.
Используя эту процедуру, определить среднее арифметическое главной диагонали
квадратной матрицы B.

программист: Потемкина Наталья гр. 145                 
Дата выполнения: 23.3.22}               
Program lab_20;
  Type
		Vector=array[1..10] of real;
		Matrix=array[1..10, 1..10] of real;
  var
    B:Matrix;
    A:Vector;
    n,i, j:integer;
    C:real;
  Procedure Cu(A:Vector; n: integer; var Cr:real);
    var
      i:integer;
    begin
      Cr:=0;
      for i:=1 to n do
        Cr:=Cr+A[i];
      Cr:=Cr/n;
    end;
    
  Procedure Input(n: integer; var B:Matrix);
  var
      i,j:integer;
    begin
      for i:=1 to n do
        for j:=1 to n do
          read(B[i,j]);
    end;
    
    Procedure Output(n: integer; A:Vector);
    var
      i:integer;
    begin
      for i:=1 to n do
        write(A[i], ' ');
    end;
    
  begin
    writeln('ввудите размер квадратной матрицы (не больше 10)');
    read(n);
    writeln('а теперь вводите элементы матрицы');
    Input(n,B);
    for i:=1 to n do
      A[i]:=B[i,i];
    Cu(A,n,C);
    write('среднеарифметическое главной диагонали {');
    Output(n,A);
    write('} составляет ', C);
  end.