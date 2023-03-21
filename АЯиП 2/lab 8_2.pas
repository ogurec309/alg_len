{лабораторная работа №8_2 задание 18 вар 17

Вариант 17.	
В произвольно заданной матрице   размером  5*4
определить минимальный элемент и обнулить значение элементов,
располо-женных ниже и правее найденного элемента.

программист: Потемкина Наталья гр. 145                 
Дата выполнения: 10.2.21}
Program lab_8_1;
	Var
	  i, j, Im, Jm, n, m:integer;
	  Min:real;
		A:array[1..10,1..10] of real;
  begin {lab 8}
    Writeln('введите размер массива n*m. n и m <= 10');
    read(n,m);
    Writeln('вводите числа массива разделяя их переносом на новую строку');
    for i := 1 to n do
      for j := 1 to m do
        Read(A[i,j]);
    {поиск самого маленького}
    Min:=A[1,1];
    Im:=1;
    Jm:=1;
    for i := 1 to n do
      for j := 1 to m do
        if (Min>A[i,j])
        then
        begin
          Min:=A[i,j];
          Im:=i;
          Jm:=j;
        end;
     {уничтожение}
     for i := Im to n do
      for j := Jm to m do
        A[i,j]:=0;
     A[Im,Jm]:=Min;
     {вывод}
     for i := 1 to n do
    begin
      Writeln();
      for j := 1 to m do
        Write(A[i,j], ' ');
    end;  end.