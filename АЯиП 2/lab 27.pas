{лабораторная работа №27 задание 17 вар 17

Вариант 17.	
Сформировать файл целых чисел.
Вывести на экран только те компоненты файла,
значения которых лежат в интервале от 0 до 25.

программист: Потемкина Наталья гр. 145                 
Дата выполнения: 22.05.22}
Program lab_27;
  Const
		Nmax=10;
	Var
    f:file of integer;
	  i,n,k:integer;
  begin 
    Assign(f,'li.lab');
		Rewrite(f);
		WriteLn('Введите длину файла n');
		ReadLn(n);
		for i:=1 to n do
			begin
        WriteLn('Введите',i:3,'-й элемент файла');
				ReadLn(k);
				Write(f,k);
			end;
		Close(f);
		Reset (f);
		WriteLn('компоненты файла, значения которых лежат в интервале от 0 до 25:');
		for i:=1 to n do
			begin
				Read(f,k);
				if (k>=0) and (k<=25) then
          WriteLn(k);
      end;
    Close(f);
  end.