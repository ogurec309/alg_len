Unit Max23;
  Interface
    Const
			Nmax=100;
    Type
      Vector=array[1..10] of real;
		  Matrix=array[1..10, 1..10] of real;
			MyArray=array[1..Nmax] of integer;
		  Procedure Cu(A:Vector; n: integer; var Cr:real);
		  Procedure Input(n: integer; var B:Matrix);
		  Procedure Output(n: integer; A:Vector);
  Implementation
  Procedure Cu(A:Vector; n: integer; var Cr:real);
    var
      i:integer;
    begin
      Cr:=0;
      for i:=1 to n do
        Cr:=Cr+A[i];
      Cr:=Cr/n;
    end;  
  Procedure Input(n: integer; var B:Matrix);
  var
      i,j:integer;
    begin
      for i:=1 to n do
        for j:=1 to n do
          read(B[i,j]);
    end;
    Procedure Output(n: integer; A:Vector);
    var
      i:integer;
    begin
      for i:=1 to n do
        write(A[i], ' ');
    end;
end.