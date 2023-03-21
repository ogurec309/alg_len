/* лабораторная работа №4 вар 2 ЗАДАНИЕ БУЛЕВОЙ ФУНКЦИИ В ВИДЕ ДЕСЯТИЧНЫХ ЭКВИВАЛЕНТОВ 
Цель работы: изучение принципов построения СДНФ и СКНФ булевых функций, заданных десятичными эквивалентами
выполнили: Потемкина, Митяева
07.10.21*/

#include<iostream>
#include<windows.h>
#include<stdio.h>
#include<stdlib.h>
using namespace std;

int main ()
{
	setlocale(LC_ALL,"Russian");//подключение русского языка
	
	cout<<"n	x1	x2	x3	f(x1,x2,x3)"<<endl;//вывод шапки таблицы истинности
	for (int i=0; i<8; i++)
	{
		cout<<i<<"	";
		if (i<4)//x1
			cout<<"0	";
		else
			cout<<"1	";
		if (i%4==0 || i%4==1)//x2
			cout<<"0	";
		else
			cout<<"1	";
		if(i%2==0)//x3
			cout<<"0	";
		else
			cout<<"1	";
		if (i==1 || i==3 || i==5)
			cout<<"1";
		else
			cout<<"0";
		cout<<endl;
	}
	
	cout<<endl<<endl;
	
	cout<<"СДНФ"<<endl;
	for (int i=0; i<8; i++)
	{
		if (i==1 || i==3 || i==5)
		{
			cout<<"(";
		if (i<4)//x1
			cout<<"-";//x1=0
		cout<<"x1*";
		if (i%4==0 || i%4==1)//x2
			cout<<"-";//x2=0
		cout<<"x2*";
		if(i%2==0)//x3
			cout<<"-";//x3=0
		cout<<"x3)V";
		}
	}
	cout<<"0"<<endl<<endl;
	
	cout<<"СКНФ"<<endl;
	for (int i=0; i<8; i++)
	{
		if (i!=1 || i!=3 || i!=5)
		{
			cout<<"(";
		if (i>4)//x1
			cout<<"-";//x1=1
		cout<<"x1V";
		if (i%4!=0 || i%4!=1)//x2
			cout<<"-";//x2=1
		cout<<"x2V";
		if(i%2!=0)//x3
			cout<<"-";//x3=1
		cout<<"x3)*";
		}
	}
	cout<<"1";
	
	return 0;
}
