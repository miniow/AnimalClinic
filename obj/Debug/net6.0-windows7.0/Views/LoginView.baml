   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:AnimalClinic.ViewsAnimalClinic.Views  5      A%clr-namespace:AnimalClinic.ViewModelsAnimalClinic.ViewModels  5      I)clr-namespace:AnimalClinic.CustomControlsAnimalClinic.CustomControls  5      "    AnimalClinic.Views.LoginView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:AnimalClinic.Views     5      ;	viewModel%clr-namespace:AnimalClinic.ViewModels     5      Dcustomcontrols)clr-namespace:AnimalClinic.CustomControls     5        � DataContext  5      ,   &AnimalClinic.ViewModels.LoginViewModel  5   
   .��5      �� $	��220��6    �� Orientation$ Vertical=�5      $��0,35,0,0q�5       � Cursor$  ��6/   .+�5   
   �� $��/Images/logo.png��6   $	��100��6*   $	��100��66   �� 5   
   $��ANIMAL CLINIC��6   
�������$��25(�5       $��Medium"�5       $��
Monsterrat)�5       $��Center=�5       �� 5   
   $B��<Animal health is very importat. Take care about your animals��6   
�������$��12(�5       $��Medium"�5       $��
Monsterrat)�5       $
��Wrap=�5        �� TextAlignment$ Center=�5       $��0,5,0,0q�5       �� 5    
   $��Email��6   
�������$��12(�5"       $��Medium"�5#       $��
Monsterrat)�5$       $��0,35,0,0q�5%       �� 5&   
   -   5         ��Name$ txtLogin��5&      $��13(�5(      $��Medium"�5)      $��
Monsterrat)�5*      
������� �� 
CaretBrush
 �����
�������$��0,0,0,1q�5.      $��28��5/      $��Center=�50      $��0,5,0,0q�51      $��20,0,0,0q�52      ��5'      �� *
Username+ �� UpdateSourceTrigger$ PropertyChanged=�.��52   1   ��53      �� 54       �� ImageSource$ /Images/user-icon.png��6    j� Stretch$
 None=�55   )   	 j� 
AlignmentX$
	 Left=�56   )   .��57   "   58      �� 59   
   $��Password��6   
�������$��12(�5;      $��Medium"�5<      $��
Monsterrat)�5=      $��0,15,0,0q�5>      5   /AnimalClinic.CustomControls.BindablePasswordBox  5?   
   $��28��5@   9   $��0,5,0,0q�5A   9   
   Password
 5?   -   �� *
Password+ �� Mode$ TwoWay=�$ PropertyChanged=�5C      �� 5D   
   ���#D7596D$��12(�5F       $��Medium"�5G       $��
Montserrat)�5H       $��0,10,0,0q�5I       $
��Wrap=�5J       ��5D      �� *ErrorMessage+5J       �� 5K   
   -   5         ��Name$ btnLogin��5K      $��0q�5M      $��Login��5N      
�������$��12(�5P      $��
Montserrat)�5Q      $
 Hand��5R      $��2��5S      $��0,30,0,0q�5T      ��5L      �� *LoginCommand+��5V      �� 5W       �� 
TargetType" ��6   .�5X      ��  �� Property � �� �� Value �#DD8e3463    �� Triggers 5Y      P� 5Z       P� Property �@J�IsMouseOver P� Value$
 True��69   . �5[      ��  � �� �#DAae346;   5\      5_      ��5b      �� 5c       �� 
TargetType" ��6"   .R�5d      �� $	��150��6   $��40��5e   )    �� CornerRadius$ 20��5f   )   #��z��5g   )   ._�5h      �� $��Center=�6+   $C��=Center                                                       =�6F   5j      5k      5m      5n      5o      