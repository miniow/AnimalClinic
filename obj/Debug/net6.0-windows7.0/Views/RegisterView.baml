   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:AnimalClinic.ViewsAnimalClinic.Views  5      A%clr-namespace:AnimalClinic.ViewModelsAnimalClinic.ViewModels  5      I)clr-namespace:AnimalClinic.CustomControlsAnimalClinic.CustomControls  5      %    AnimalClinic.Views.RegisterView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:AnimalClinic.Views     5      ;	viewModel%clr-namespace:AnimalClinic.ViewModels     5      Dcustomcontrols)clr-namespace:AnimalClinic.CustomControls     5      $	��650��5	   3     � DataContext  5
      /   )AnimalClinic.ViewModels.RegisterViewModel  5   
   .��5      �� $	��220��6    �� Orientation$ Vertical=�5      $��290,15,290,3q�5      .+�5   
   �� $��Email��6   
�������$��12(�5      $��Medium"�5      $��
Monsterrat)�5      $��0,0,0,0q�5      �� 5   
   -   5         ��Name$ txtLogin��5      $��13(�5      $��Medium"�5      $��
Monsterrat)�5      
�������
������  �� 
CaretBrush
 �����
�������$��0,0,0,1q�5      $��28��5       $��Center=�5!      $��0,5,0,0q�5"      $��20,0,0,0q�5#      ��5      �� *Email+ �� UpdateSourceTrigger$ PropertyChanged=�.��5#   .   5$      �� 5%   
   $��Password��6   
�������$��12(�5'      $��Medium"�5(      $��
Monsterrat)�5)      $��0,15,0,0q�5*      5   /AnimalClinic.CustomControls.BindablePasswordBox  5+   
   $��28��5,   1   $��0,5,0,0q�5-   1      Password 5+   -   �� *
Password+ �� Mode$ TwoWay=�$ PropertyChanged=�5/      �� 50   
   $��Confirm Password��6   
�������$��12(�52      $��Medium"�53      $��
Monsterrat)�54      $��0,15,0,0q�55        56   
   $��28��6�   $��0,5,0,0q�57       56   -   �� *ConfirmPassword+$ TwoWay=�$ PropertyChanged=�59      �� 5:   
   $
��Name��6   
�������$��12(�5<      $��Medium"�5=      $��
Monsterrat)�5>      $��0,15,0,0q�5?      �� 5@   
   -   5        $ txtName��5@      $��13(�5B      $��Medium"�5C      $��
Monsterrat)�5D      
�������
������ 
 �����
�������$��0,0,0,1q�5I      $��28��5J      $��Center=�5K      $��0,5,0,0q�5L      $��20,0,0,0q�5M      ��5A      �� *Name+$ PropertyChanged=�.��5M   '   5N      �� 5P   
   $��Surename��6   
�������$��12(�5R      $��Medium"�5S      $��
Monsterrat)�5T      $��0,15,0,0q�5U      �� 5V   
   -   5        $ txtSurename��5V      $��13(�5X      $��Medium"�5Y      $��
Monsterrat)�5Z      
�������
������ 
 �����
�������$��0,0,0,1q�5_      $��28��5`      $��Center=�5a      $��0,5,0,0q�5b      $��20,0,0,0q�5c      ��5W      �� *	Surname+$ PropertyChanged=�.��5c      5d      �� 5e   
   $��Picture��6   
�������$��12(�5g      $��Medium"�5h      $��
Monsterrat)�5i      $��0,15,0,0q�5j      �� 5k   
   $ 
Horizontal=�6   $��Center=�6.   $��Center=�6I   .+�5l      �� -   5        $��7��5l      $��2��6"   
�������$��1q�6E    �� CornerRadius$ 5��6Y   $
��Left=�5m      $��Stretch=�6   $��5q�68   $	��100��6C   $	��100��6O   
������� J� 	AllowDrop$
 True��5n      ._�5o      �� -   5        	 ��Name$	 	userImage��5o      $��Uniform=�6+   ��6=   �� *	Picture+$ TwoWay=�5q      �� 5r      -   5        
 ��Name$
 btnUndo��5r      $��0q�5t      $
��Undo��5u      
�������$��12(�5w      $��
Montserrat)�5x       � Cursor$
 Hand��5y      $��2��5{      $��0,30,0,0q�5|      ��5s      �� *LoginCommand+��5~      �� 5       �� 
TargetType" ��6   .�5�      ��  �� Property � �� �� Value �#DD8e3467    �� Triggers 5�      P� 5�       P� Property �@J�IsMouseOver P� Value$
 True��6=   . �5�   "   ��  � �� �#DAae346?   5�      5�      ��5�      �� 5�       �� 
TargetType" ��6&   .R�5�      �� $��75��6!   $��40��5�      $ 20��5�      #��z��5�      ._�5�      �� $��Center=�6/   $4��.Center                                        =�6J   5�      5�      5�      5�      �� 5�   
   ���#D7596D$��12(�5�      $��Medium"�5�      $��
Montserrat)�5�      $��0,10,0,0q�5�      $
��Wrap=�5�      ��5�      �� *ErrorMessage+5�      �� 5�   
   -   5        $
 btnRegister��5�      $��0q�5�      $��Register��5�      
�������$��12(�5�      $��
Montserrat)�5�      $
 Hand��5�      $��2��5�      $��0,30,0,0q�5�      ��5�      �� *RegisterCommand+��5�      �� 5�      " ��6   .�5�      ��  � �� �#DD8e3463    5�      P� 5�       �@J�IsMouseOver$
 True��69   . �5�      ��  � �� �#DAae346;   5�      5�      ��5�      �� 5�      " ��6"   .R�5�      �� $	��150��6   $��40��5�   !   $ 20��5�   !   #��z��5�   !   ._�5�      �� $��Center=�6+   $;��5Center                                               =�6F   5�      5�      5�      5�      5�      