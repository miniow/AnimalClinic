   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:AnimalClinic.ViewModelsAnimalClinic.ViewModels  5      7 clr-namespace:AnimalClinic.ViewsAnimalClinic.Views  5      $    AnimalClinic.Views.ProfileView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      5	viewModel%clr-namespace:AnimalClinic.ViewModels  5      ,local clr-namespace:AnimalClinic.Views  5        � DataContext  5      .   (AnimalClinic.ViewModels.ProfileViewModel  5   
    � 	Resources 5      2   ,AnimalClinic.Views.ByteArrayToImageConverter   YourImageConverter��%   &	          5   
   6*   5      .��5      � $��Center=�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6!   $��Picture:��61   $��5q�6A   $	��top=�6L   $��Center=�6d   $��16(�6�   $��Medium"�6�   $��
Monsterrat)�6�   �� 5!   
   -   5        $	��100��5!      $	��100��6   $��0��6*   $��1��67     color12#��[ 6G   $��2q�6n    �� CornerRadius$ 5��6�   $
��Left=�5"      $��Stretch=�6   $��5q�68   
������  J� 	AllowDrop$
 True��5#      ._�5$      �� -   5         ��Name$ 	userImage��5$      $	��100��6w   $��5q�6�   ��6'   �� *User.Picture+ �� 	Converter# [  6�   5&      �� 5'   
   $��1��6   $��0��6!   $��Name:��61   $��5q�6>   $��Center=�6I   $��Center=�6d   $��16(�6�   $��Medium"�6�   $��
Monsterrat)�6�   �� 5(   
   $
��Left=�6   $��1��6,   $��1��69   $
��0 10q�6I   $	��300��6W    
 color2#��[ 6c   $��1q�6�   $ 5��6�   ._�5)      ��   AddFiedTextBox#��[ 6   $��5q�6   ��6?   �� *	User.Name+ �� UpdateSourceTrigger$ PropertyChanged=�6   5*      �� 5.   
   $��2��6   $��0��6!   $��Surname:��61   $��5q�6A   $��Center=�6L   $��Center=�6g   $��16(�6�   $��Medium"�6�   $��
Monsterrat)�6�   �� 5/   
   $
��Left=�6   $��2��6,   $��1��69   $
��0 10q�6I   #��[ 6X   $��1q�6~   $ 5��6�   $	��300��6�   ._�50      �� #��[ 6   $��5q�6�   $��
Monsterrat)�6�   ��6?   �� *User.SureName+$ PropertyChanged=�6�   51      �� 55   
   $��3��6   $��0��6!   $��Email:��61   $��5q�6?   $��Center=�6J   $��Center=�6e   $��16(�6�   $��Medium"�6�   $��
Monsterrat)�6�   �� 56   
   $
��Left=�6   $��3��6,   $��1��69   $
��0 10q�6I   #��[ 6W   $��1q�6}   $ 5��6�   $	��300��6�   ._�57      �� #��[ 6   $��5q�6�   ��6?   �� *
User.Email+$ PropertyChanged=�6�   58      �� 5?   
   $��4��6   $��2��6   $
��Save��6R   $��5q�6a     	addButton#��[ 6l   ��62   �� *SaveCommand+6l   5@      5A      