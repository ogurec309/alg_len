{лабораторная работа №29 вар 17

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
	  i,n,k, a, c1, c, j:integer;
	  //A: array [1..Nmax] of integer;
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
		writeln('введите сдвиг (k>0 ->; k<0 <-)');
		ReadLn(k);
		Reset(f);
		n:=filesize(f);
      for i:=1 to Abs(k) do
        if k<0 then
        begin
          seek(f,0);
          read(f,c1);
          for j:=0 to n-2 do
          begin
            seek(f,j+1);
            read(f,c);
            seek(f,j);
            write(f,c);
          end;
          seek(f,n-1);
          write(f,c1);
        end
        else
        begin
          seek(f,n-1);
          read(f,c1);
          for j:=n-1 downto 1 do
          begin
            seek(f,j-1);
            read(f,c);
            seek(f,j);
            write(f,c);
          end;
          seek(f,0);
          write(f,c1);
        end;
    Close(f);
    Reset (f);
    Writeln('Изменённый файл:');
    for i:=1 to n do//ввод файла
			begin
				Read(f,a);
				Write(a,' ');
			end;
			Close(f);
  end.