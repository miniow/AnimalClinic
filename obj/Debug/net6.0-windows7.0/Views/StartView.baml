   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:AnimalClinic.ViewsAnimalClinic.Views  5   	   A%clr-namespace:AnimalClinic.ViewModelsAnimalClinic.ViewModels  5   	   "    AnimalClinic.Views.StartView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:AnimalClinic.Views     5   	   ;	viewModel%clr-namespace:AnimalClinic.ViewModels     5   	   -   5          � Title$  	StartView��5	   	   $	��650��6   $	��800��6(    � WindowStyle$
 None=�5
   	    � 
ResizeMode$ CanResizeWithGrip=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      ,   &AnimalClinic.ViewModels.StartViewModel  5   
    � 	Resources 5       �� DataType,   &AnimalClinic.ViewModels.LoginViewModel"   AnimalClinic.Views.LoginView/   )AnimalClinic.ViewModels.RegisterViewModel%   AnimalClinic.Views.RegisterView��%�   (��       5      *, +)(�� 2     5      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      5      .��5      ��  �� CornerRadius$ 10��6   ��5   
   �� 5      	 �� ImageSource$	 /Images/back-image2.png��6   
 j� Stretch$

 Fill=�5       ._�5"   
   �� $ 10��6   $��3q�5#   	    J� Opacity$
 0.85Q�5$   
   ��5%      �� 5&       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5'      �    winBorderColor1 � Color# [  6#    � Offset$ 0Q�6L   � 5(        winBorderColor2# [ 6#   $	 0.7Q�6L   � 5)        winBorderColor3# [ 6#   $ 1Q�6L   5*      ��5-      �� 5.      $	 0,1&�6&   $	 1,0&�67   .��5/      �   primaryBackColor1# [ 6#   $ 0Q�6N   � 50        primaryBackColor2# [ 6#   $ 75Q�6N   51      ._�54      �  � RowDefinitions 55      �� 56      $��30 �6    �� 57      $��* �6    �� 58      $
��Auto �6    .+�5:      �  � ColumnDefinitions 5;      �� 5<      �� 5=      $��25 �6'   �� 5>      $��25 �6'   �� 5?      $��5 �6'   .+�5B      �� 
�������$��14(�5D      $��Medium"�5E      $��
Montserrat)�5F      $��0��5G      $��Center=�5H      $��10,0,0,0q�5I      ��5B      �� *	Caption+5I      �� 5K      -   5         ��Name$ btnMinimize��5K      $��0q�5L      $��-��5M      
�������$��16(�5O      $��
Montserrat)�5P       � Cursor$
 Hand��5Q      $��1��5R      ��5T      �� 5U       �� 
TargetType" ��6    .�5V      ��  �� Property � �� �� Value �#28EDAe6;    �� Triggers 5W      P� 5X   "    P� Property �@J�IsMouseOver P� Value$
 True��6A   . �5Y   &   ��  � �� �#28AF8b6C   5Z   #   5]      ��5`      �� 5a       �� 
TargetType" ��6*   .R�5b      �� $��18��6%   $��18��60   $ 9��5c      #��z��5d      ._�5e   "   �� $��Center=�63   $��Center=�6N   5f      5g      5i      �� 5j      -   5        $ btnClose��5j      $��0q�5k      $��X��5l      
�������$��12(�5n      $��
Montserrat)�5o      $
 Hand��5p      $��2��5q      ��5s      �� 5t      " ��6    .�5u      ��  � �� �#DAae346;    5v      P� 5w   "    �@J�IsMouseOver$
 True��6A   . �5x   &   ��  � �� �#DD8e346C   5y   #   5|      ��5      �� 5�      " ��6*   .R�5�      �� $��18��6%   $��18��60   $ 9��5�      #��z��5�      ._�5�   "   �� $��Center=�63   $��Center=�6N   5�      5�      5�      5�      �� 5�      $��1��5�      ��5�   !   �� *CurrentChildView+5�      �� 5�      $��2��6   .+�5�      ��  �� Orientation$ 
Horizontal=�6!   $��Center=�6:   $��Center=�6U   .+�5�      �� $��12(�6>   
�������$��
Monsterrat)�5�   %   $��Medium"�5�   %   $��0 0 0 10q�5�   $   ��5�   $   �� *
BackText+5�      �� 5�        registerButton#��[ 6C   $��	10,0,0,10q�6k   ��6!   �� *ButtonContent+��6~   �� *CurrentButtonCommand+5�      5�      5�      5�      5�      5�      