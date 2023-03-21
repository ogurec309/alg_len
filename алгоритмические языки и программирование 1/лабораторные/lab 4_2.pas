{лабораторная работа №4 задание 11 вар 17
задание:17 Вычислить сумму. Для контрольного просчета принять a = 1,7.
цель работы- изучение среды ABC-паскаля
тема работы: ВЫЧИСЛЕНИЕ КОНЕЧНЫХ СУММ И ПРОИЗВЕДЕНИЙ
программист: Потемкина Наталья гр. 145                 
Дата выполнения: 24.10.21}
program lab4_2;
  var 
    hx,x,x0,xn,y, a:real; 
		i,nx:integer;
  Begin {Tab}
	{Ввод и эхо-печать исходных данных }
		Write('x0=');
		Read(x0);
		Write('hx=');
		Read(hx);
		Write('xn=');
		Read(xn);
		Writeln('X0=',x0,' HX=',hx,' XN=',xn);
	{Табулирование функции }
		x:=x0;
		nx:=Trunc((xn-x0)/hx+1e-6)+1;
		for i:=1 to nx do
      begin {начало цикла}
        a:=abs(x);
        if a<=1
        then
          y:=a
        else
          if a<=2
          then
            y:=power(x,2)
          else
            y:=4;
        writeln('x=',x,' y=',y);
        x:=x+hx;
      end;
  end.
        