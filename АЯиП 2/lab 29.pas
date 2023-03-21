{лабораторная работа №27 задание 17 вар 17

При выполнении данных заданий все преобразования производить
только над исходным файлом без использования промежуточных файлов.
Предусмотреть вывод содержимого файла до и после преобразования.
Вариант 17:
Файл целых чисел циклически сдвинуть влево или вправо на К элементов
в зависимости от знака числа К.

программист: Потемкина Наталья гр. 145                 
Дата выполнения: 22.05.22}
Program lab_29;
  Const
		Nmax=20;
	Var
    f:file of integer;
	  i,n,k, a, c:integer;
	  A: array [1..Nmax] of integer;
  begin 
    Assign(f,'li.lab');
		Rewrite(f);
		WriteLn('Введите длину файла n не больше 20');
		ReadLn(n);
		for i:=1 to n do//ввод файла
			begin
        WriteLn('Введите',i:3,'-й элемент файла');
				ReadLn(a);
				Write(f,a);
			end;
		Close(f);
		writeln('введите сдвиг (сдвиг в права положителен, в лево отрицателен)');
		ReadLn(k);
		n:=FileSize(F);
		{for i:=1 to n do
			Read(f,A[i]);{}
      for i:=1 to Abs(k) do
        if k<0 then
        begin
          //c:=A[i];
          for i:=1 to n do
          begin
            seak(f,0);
          read(f,c);
            {A[i]:=A[i+1];
          A[n]:=c;{}
        end
      else
        begin
          c:=A[n];
          for i:=n downto 2 do
            A[i]:=A[i-1];
          A[1]:=c;
        end;
  end.