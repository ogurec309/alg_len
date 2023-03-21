{лабораторная работа №7 задание 16 вар 17

задание:17 
1.
a=1(1)3
x=0.1(0.1)0.5
z=e^(-a*sin(x))
2. вывести
55
4 4
3  3
2   2
1    1
  
цель работы- изучение среды ABC-паскаля
  
тема работы: ОРГАНИЗАЦИЯ ВВОДА-ВЫВОДА. ПРЕДСТАВЛЕНИЕ РЕЗУЛЬТАТОВ РЕШЕНИЯ

программист: Потемкина Наталья гр. 145                 
Дата выполнения: 11.12.21}

Program lab_7;
  Const
		P='  ';
		T='            ';
  var
    x, xh, xn, a, ah, an, z,a0:real;
    i,n:integer;
  begin {lab 7}
    writeln('введите a0(ah)an', chr(13), 'рекомендуемые значения: 1(1)3');
    read(a0, ah, an);
    writeln('введите x0(xh)xn', chr(13), 'рекомендуемые значения: 0,1(0,1)0,5');
    read(x, xh, xn);
    writeln('вы ввели: ', chr(13),'a=', a0, '(', ah, ')', an , chr(13), 'x=', x, '(', xh, ')', xn);
    
    writeln('вывод таблицы', chr(13));
    writeln(chr(13), '┌────────────┬────────────┬───────────┐');
    writeln('│     x     │     a     │     z    │');
    while x<xn+xh/2 do
    begin
      a:=a0;
      repeat
        z:=exp(-1*a*sin(x));
        writeln('├────────────┼────────────┼───────────┤');
        writeln('│  ',x:5:2, '    │  ', a:5:2, '    │  ', z:5:2, '   │');
        a:=a+ah;
      until a>an+ah/2;
      x:=x+xh;
    end;
    writeln('└────────────┴────────────┴───────────┘');
		{Write(T,Chr(219));
		for i:=1 to 8 do
			Write(Chr(196));
		Write(Chr(194));
		for i:=1 to 10 do
			Write(Chr(196));
		Write(Chr(194));
		for i:=1 to 10 do
			Write(Chr(196));
		WriteLn(Chr(191));
		Write(T,Chr(179),'x':5,Chr(179):4,'a':6);
		WriteLn(Chr(179):5,'z':5,Chr(179):5);
		Write(T,Chr(195));
		for i:=1 to 8 do
			Write(Chr(196));
		Write(Chr(197));
		for i:=1 to 10 do
			Write(Chr(196));
		Write(Chr(197));
		for i:=1 to 10 do
			Write(Chr(196));
		WriteLn(Chr(180));
		while x<xn+xh/2 do
			begin
				repeat
          z:=exp(-1*a*sin(x));
				  Write(T,Chr(179),P,x:4:2,P,Chr(179),P,a:6:3,P,Chr(179));
				  WriteLn(P,x:5:3,P,Chr(179));
				  a:=a+ah;
        until a>an+ah/2;
				x:=x+xh;
			end;
		Write(T, Chr(192));
		for i:=1 to 8 do
			Write(Chr(196));
		Write(Chr(193));
		for i:=1 to 10 do
			Write(Chr(196));
		Write(Chr(193));
		for i:=1 to 10 do
			Write(Chr(196));
		WriteLn(Chr(217));}
		writeln;
		writeln('введите число n (размер фигуры)');
		read(n);
		writeln('вывод фигуры');
		for i:=n downto 1 do
    begin
      writeln(i:1, i:(n-i+1));
    end;
  end.