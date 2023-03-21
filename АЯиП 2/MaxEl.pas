Unit MaxEl;
	Interface			{Интерфейсная секция}
		Const
			Nmax=100;
		Type
			MyArray=array[1..Nmax] of integer;
		Procedure InpArray(Var a:MyArray; name:char; n:integer);
		Procedure OutArray(a:MyArray; name:char; n:integer);
		Procedure MaxElArray(a:MyArray; n:integer; Var max:integer);
	Implementation	{Исполняемая часть}
		{Процедура InpArray ввода одномерного массива}
		Procedure InpArray;
			Var
				i:integer;
			Begin {InpArray} 
				WriteLn('Введите',n:4,' элементов массива ',
						name);
				for i:=1 to n do
					Read(a[i])
			End; {InpArray}
		{Процедура OutArray вывода одномерного массива}
		Procedure OutArray;
			Var
				i:integer;
			Begin {OutArray}
				WriteLn('Массив ',name,':');
				for i:=1 to n do
					Write(a[i]:8);
				WriteLn
			End; {OutArray}
		{Процедура MaxElArray определения максимального	}
		{элемента одномерного массива							}
		Procedure MaxElArray;
			Var
				i:integer;
			Begin {MaxElArray}
				max:=a[1];
				for i:=2 to n do
					if max<a[i]
					then
						max:=a[i]
			End; {MaxElArray}
	End.{MaxEl}