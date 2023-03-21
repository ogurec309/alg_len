{лабораторная работа №28 вар 17

Вариант 17. Для заданного символа определить,
сколько раз он встречается во введенном тексте файла.

программист: Потемкина Наталья гр. 145                 
Дата выполнения: 26.05.22}
Program lab_29;
	Uses
		Crt;
		Type
		Dlina=string[60];
	Var
		Ft:text;					{файловая переменная			}
		S:Dlina;					{промежуточная переменная	}
		Rej:char;					{селектор режима				}
		FileName:string[14];	{имя файла							}
    f:file of integer;
	  i,n,k, a, c1, c, j:integer;
	  //A: array [1..Nmax] of integer;
	  
	  {процедура чтения и вывода файла}
	Procedure obrt(Var stro:text);
		Begin {obrt}
			Write('имя выводимого файла:');
			ReadLn(FileName);
			Assign(stro,FileName);
			{$I-}
			Reset(stro); 
			if IOResult <> 0
			then
				begin
					WriteLn('Файл ',FileName,' не существует');
					Exit
				end;
			{$I+}
			while not SeekEof(stro) do
				begin
					ReadLn(stro,s);
					WriteLn(s)
				end;
		End; {obrt}
		
{процедура расширения файла}
	Procedure rasht(Var stro:text);
		Begin {rasht}
			repeat
				WriteLn('имя расширяемого файла');
				ReadLn(FileName);
				Assign(stro,FileName);
				{$I-}
				Append(stro)
				{$I+}
			until IOResult=0;
			while true do
				begin
					WriteLn('вводите строку');
					ReadLn(s);
					if s='zzz'
					then
						begin
							Close(stro);
							Exit
						end;
					WriteLn(stro,s)
				end
		End;{rasht}
	{процедура создания файла}
	Procedure sozdt(Var stro:text);
		Begin {sozdt}
			WriteLn('имя создаваемого файла');
			ReadLn(FileName);
			Assign(stro,FileName);
			Rewrite(stro);
			while true do
				begin
					WriteLn('Введите строку (zzz–окончание ввода)');
					ReadLn(s);
					if s='zzz'
						then
							begin
								Close(stro);
								Exit
							end;
					WriteLn(stro,s)
				end
		end; {sozdt}
	{основная программа}
	Begin {TextFiles}
		while true do
			begin
				ClrScr;
				WriteLn('укажите режим');
				WriteLn('1: Создание текстового файла');
				WriteLn('2: Вывод текстового файла');
				WriteLn('3: Расширение текстового файла');
				WriteLn('4: Выход из программы');
				ReadLn(rej);
				WriteLn;
				case rej of
					'1' : sozdt(Ft);
					'2' : obrt(Ft);
					'3' : rasht(Ft);
					'4' : halt;
					else
						WriteLn ('повторите ввод номера');
				end;
				WriteLn('для продолжения нажмите “Enter”');
				ReadLn
			end;
	End {TextFiles}.