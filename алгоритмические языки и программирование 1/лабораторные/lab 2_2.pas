{������������ ������ �2.2 ��� 17
�������:����������� ���������, ������� ������� �� ����� ������� �������� ������� ������ ����������� �������, ��������� � ������� ����������� ����.
��� ����������� ����:
������� ����� ����:
1-	 ��������	�������� = 10 �
2-	 ���������	��������� = 100 �
3-	 ��������	�������� = 1000 �
4-	 ���������	��������� = 10000 �
5-	 ��������	�������� = 1000000 �
���� ������- �������� ����� ABC-�������
���� ������: ��������������� ��������� � �������������� ��������� ��������
�����������: ��������� ������� ��. 145                 
���� ����������: 15.09.21}
program lab2_2;
  var
    a:integer;
  begin{lab2_2}
    writeln('1-  ��������');
    writeln('2-	 ���������');
    writeln('3-	 ��������');
    writeln('4-	 ���������');
    writeln('5-	 ��������');
    writeln();
    writeln('�������� ������������ ��� ����� � ������� ��� �����');
    read(a);
    case a of
      1:begin
          writeln('1 �������� = 10 �');
        end;
      2:begin
          writeln('1 ��������� = 100 �');
        end;
      3:begin
          writeln('1 �������� = 1000 �');
        end;
      4:begin
          writeln('1 ��������� = 10000 �');
        end;
      5:begin
          writeln('1 �������� = 1000000 �');
        end
      else
				WriteLn('��������� ����� ��������')
			end;
  end.{lab2_2}
    
    