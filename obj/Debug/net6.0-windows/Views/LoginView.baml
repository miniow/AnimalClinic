   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:AnimalClinic.ViewAnimalClinic.View  5   	   A%clr-namespace:AnimalClinic.ViewModelsAnimalClinic.ViewModels  5   	   I)clr-namespace:AnimalClinic.CustomControlsAnimalClinic.CustomControls  5   	   !    AnimalClinic.View.LoginView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:AnimalClinic.View     5   	   ;	viewModel%clr-namespace:AnimalClinic.ViewModels     5   	   Dcustomcontrols)clr-namespace:AnimalClinic.CustomControls     5   	   -   5          � Title$  	LoginView��5
   	   $	��550��6   $	��800��6(    � WindowStyle$
 None=�5   	    � 
ResizeMode$ CanResizeWithGrip=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      ,   &AnimalClinic.ViewModels.LoginViewModel  5   
    � 	Resources 5         BooleanToVisibility��%   &	        �� 5   
   6'   5      y�5      �� 5       �� Path$ IsViewVisible�6    �� Mode$ TwoWay=�6/   	 �� 	Converter#	 [  6=   .��5      �� 
 �� CornerRadius$
 10��6   ��5   
   �� 5       �� ImageSource$D >C:\Users\zymci\Desktop\kck\AnimalClinic\Images\back-image2.png��6    j� Stretch$
 Fill=�5      ._�5#   
   �� $
 10��6   $��3q�5$       J� Opacity$
 0.85Q�5%      ��5&      �� 5'       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5(      �   winBorderColor1 � Color# [ 6#    � Offset$ 0Q�6L   � 5)        winBorderColor2# [ 6#   $	 0.7Q�6L   � 5*        winBorderColor3# [ 6#   $ 1Q�6L   5+      ��5.      �� 5/      $	 0,1&�6&   $	 1,0&�67   .��50      �   primaryBackColor1# [ 6#   $ 0Q�6N   � 51        primaryBackColor2# [ 6#   $ 75Q�6N   52      ._�56      �  � RowDefinitions 57      �� 58      $��30 �6    �� 59      .+�5<      �  � ColumnDefinitions 5=      �� 5>      �� 5?      $��25 �6+   �� 5@      $��25 �6+   �� 5A      $��5 �6+   .+�5D      �� $��LOG IN��6    
�������$��10(�5F       $��
Montserrat)�5G       $��0��5H       $��Center=�5I       $��10,0,0,0q�5J       �� 5L      -   5         ��Name$ btnMinimize��5L      $��0q�5M      $��-��5N      
�������$��16(�5P      $��
Montserrat)�5Q       � Cursor$
 Hand��5R      $��1��5S      ��5U      �� 5V       �� 
TargetType" ��6$   .�5W   "   ��  �� Property � �� �� Value �#28EDAe6?    �� Triggers 5X   "   P� 5Y   &    P� Property �@J�IsMouseOver P� Value$
 True��6E   . �5Z   *   ��  � �� �#28AF8b6G   5[   '   5^      ��5a      �� 5b       �� 
TargetType" ��6.   .R�5c   "   �� $��18��6)   $��18��64   $
 9��5d   )   #��z��5e   )   ._�5f   &   �� $��Center=�67   $��Center=�6R   5g   #   5h      5j      �� 5k      -   5        $ btnClose��5k      $��0q�5l      $��X��5m      
�������$��12(�5o      $��
Montserrat)�5p      $
 Hand��5q      $��2��5r      ��5t      �� 5u      " ��6$   .�5v   "   ��  � �� �#DAae346?    5w   "   P� 5x   &    �@J�IsMouseOver$
 True��6E   . �5y   *   ��  � �� �#DD8e346G   5z   '   5}      ��5�      �� 5�      " ��6.   .R�5�   "   �� $��18��6)   $��18��64   $
 9��5�      #��z��5�      ._�5�   &   �� $��Center=�67   $��Center=�6R   5�   #   5�      5�      5�      �� 5�      $	��220��6   $��2��5�       �� Orientation$ Vertical=�5�      $��0,35,0,0q�5�      .+�5�      �� $"��AnimalClinic\Images\logo.png��6   $	��100��6B   $	��100��6N   �� 5�      $��ANIMAL CLINIC��6    
�������$��25(�5�       $��Medium"�5�       $��
Monsterrat)�5�       $��Center=�5�       �� 5�      $B��<Animal health is very importat. Take care about your animals��6    
�������$��12(�5�       $��Medium"�5�       $��
Monsterrat)�5�       $
��Wrap=�5�        �� TextAlignment$ Center=�5�       $��0,5,0,0q�5�       �� 5�      $��Login��6    
�������$��12(�5�       $��Medium"�5�       $��
Monsterrat)�5�       $��0,35,0,0q�5�       �� 5�      -   5         ��Name$ txtLogin��5�      $��13(�5�      $��Medium"�5�      $��
Monsterrat)�5�      
�������  �� 
CaretBrush
  �����
�������$��0,0,0,1q�5�      $��28��5�      $��Center=�5�      $��0,5,0,0q�5�      $��20,0,0,0q�5�      ��5�      �� *
Username+! �� UpdateSourceTrigger$! PropertyChanged=�.��5�   1   ��5�      �� 5�      $B <C:\Users\zymci\Desktop\kck\AnimalClinic\Images\user-icon.png��6)   $
 None=�5�   )   " j� 
AlignmentX$
" Left=�5�   )   .��5�   .   5�      �� 5�      $��Password��6    
�������$��12(�5�      $��Medium"�5�      $��
Monsterrat)�5�      $��0,15,0,0q�5�      5   /AnimalClinic.CustomControls.BindablePasswordBox  5�      $��28��5�   9   $��0,5,0,0q�5�   9   #   Password# 5�   9   �� *
Password+$ TwoWay=�$! PropertyChanged=�5�      �� 5�      ���#D7596D$��12(�5�       $��Medium"�5�       $��
Montserrat)�5�       $��0,10,0,0q�5�       $
��Wrap=�5�       ��5�   !   �� *ErrorMessage+5�       �� 5�      -   5        $ btnLogin��5�      $��0q�5�      $��Login��5�      
�������$��12(�5�      $��
Montserrat)�5�      $
 Hand��5�      $��2��5�      $��0,30,0,0q�5�      ��5�      �� *LoginCommand+��5�      �� 5�      " ��6$   .�5�   "   ��  � �� �#DD8e346?    5�   "   P� 5�   &    �@J�IsMouseOver$
 True��6E   . �5�   *   ��  � �� �#DAae346G   5�   '   5�      ��5�      �� 5�      " ��6.   .R�5�   "   �� $	��150��6)   $��40��5�   )   $
 20��5�   )   #��z��5�   )   ._�5�   &   �� $��Center=�67   $��Center=�6R   5�   #   5�      5�      �� 5�      $ 
Horizontal=�6!   $��Center=�5�   !   $��0,15,0,0q�5�   "   .+�5�      �� $��Forgot Password?��6    
�������$��12(�5�       $��
Monsterrat)�5�       $��Medium"�5�       �� 5�      $��Reset��6$   
�������$��12(�5�       $��
Monsterrat)�5�       $��Medium"�5�       $
 Hand��5�       $��8,0,0,0q�5�   $   5�      5     5     5     5     5     