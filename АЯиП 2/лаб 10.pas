{лабораторная работа №10 задание 19 вар 17

Вариант 17.определить длину кривой используя роцедуры

программист: Потемкина Наталья гр. 145                 
Дата выполнения: 19.3.22}
Program lab_19;
  var
    C, S, R: real;
    n,i:integer;
  Procedure Cu(R:real; var C:real);
    begin
      C:=Pi*R;
    end;
  begin
    writeln('ввудите число дуг, составляющих кривую');
    read(n);
    writeln('а теперь вводите радиусы дуг');
    S:=0;
    for i:=1 to n do
    begin
      read(R);
      Cu(R,C);
      S:=S+C;
    end;
    writeln('длина кривой из ', n, ' дуг составляет ', S);
  end.