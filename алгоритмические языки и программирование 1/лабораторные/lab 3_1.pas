{лабораторная работа №3.1 вар 17
тема работы: ТАБУЛИРОВАНИЕ ФУНКЦИЙ С ИСПОЛЬЗОВАНИЕМ ЦИКЛИЧЕСКИХ АЛГОРИТМОВ С ПОСТУСЛОВИЕМ
задание:17 (см отчёт)
программист: Потемкина Наталья гр. 145                 
Дата выполнения: 17.09.21}
program lab2;
  var  
    hx, x, x0, xn, f: real;
  begin{Tab}  
    Write('введите x0');   
    Read(x0);   
    Write('введите hx=');   
    Read(hx);   
    Write('введите xn=');   
    Read(xn);   
    Writeln('X0=', x0, ' HX=', hx, ' XN=', xn);   
    {Табулирование функции }   
    x := x0;   
    repeat{начало цикла}
    Write('X=', x);
      if x <= -1       
        then       
          f := 1     
      else	if x <= 1       
        then       
         f := 2*power(x,2)-1     
      else
          f := power(x,2);
      if x<=2
        then
          Writeln('  f(x)=', f)
      else
        writeln('   функция не определена');
      x := x + hx    
    until x > xn + hx / 2{конец цикла}    
  end. {Tab}  
