   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:AnimalClinic.ViewsAnimalClinic.Views  5   	   A%clr-namespace:AnimalClinic.ViewModelsAnimalClinic.ViewModels  5   	   !    AnimalClinic.Views.MainView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:AnimalClinic.Views     5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	   5	viewModel%clr-namespace:AnimalClinic.ViewModels  5   	     � Title$  MainWindowView��5
   	   $	��300��6    $
��1100��60    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ CanResizeWithGrip=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      +   %AnimalClinic.ViewModels.MainViewModel  5   
    � 	Resources 5       �� DataType+   %AnimalClinic.ViewModels.HomeViewModel!   AnimalClinic.Views.HomeView-   'AnimalClinic.ViewModels.AnimalViewModel#   AnimalClinic.Views.AnimalView0   *AnimalClinic.ViewModels.VeteriansViewModel&    AnimalClinic.Views.VeteriansView2   ,AnimalClinic.ViewModels.AppointmentViewModel)	   #AnimalClinic.Views.AppointmentsView.
   (AnimalClinic.ViewModels.ProfileViewModel$   AnimalClinic.Views.ProfileView��%w  (��       5      *, +)(�� 2     5      *, +)(�� d     5      *, +)(�� �     5      *, +)(�� �     5"      *,
 +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5       	  5!      �� 5"   
   " 
 6   .R�5#        5$      5%      .��5&      ��  �� CornerRadius$ 10��6   $��1q�5'      ��5)      �� 5*      	 �� 
StartPoint$		 0,0&�6&   
 �� EndPoint$	
 1,1&�67   .��5+      �    winBorderColor1 � Color# [  6#    � Offset$ 0Q�6L   � 5,        winBorderColor2# [ 6#   $	 0.7Q�6L   � 5-        winBorderColor3# [ 6#   $ 1Q�6L   5.      ._�51   
   �  � ColumnDefinitions 53      �� 54      $	��200 �6#   �� 55      $��* �6#   .+�58      �� $ 	10,0,0,10��6   $��0��59      ��5:      �� 5;      .��5<      �   secondaryBackColor1# [ 6'   $ 0Q�6T   � 5=        secondaryBackColor2# [ 6'   $ 1Q�6T   5>      ._�5@      �� .+�5B      �� $��55��5C   !   $��
15,25,0,40q�5D   !   .+�5E      �� $��/Images/logo.png��6    $��30��6:   �� 5F      $��ANIMAL CLINIC��6$     titleColor1#��[ 5G   $   $��20(�5H   $   $��
Monsterrat)�5I   $   $��Medium"�5J   $   $��Center=�5K   $   $��10,0,0,0q�5L   $   5M      �� 5N      .+�5P      	�   
menuButton#��[ 6"    
 color1
 � Tag# [ 5Q   "   $��0,0,0,0q�5S   "    d� 	IsChecked 5R   "   �� *IsHomeViewActive+��5T   "   �� *ShowHomeViewCommand+.��5U      ��  �� Orientation$ 
Horizontal=�6%   .+�5W   "   !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ HouseChimneyMedical=�6/     menuButtonIcon#��[ 6J   �� 5X   "   $��Clinic��6,    	 menuButtonText#��[	 6:   5Z      5\      	� 5]      #��[ 6"   # [ 5^   %   ��5_   "   �� *ShowAnimalViewCommand+.��5`      �� $ 
Horizontal=�6%   .+�5a        $	 Paw=�6+   #��[ 66   �� 5b      $��Animals��6(   #��[	 67   5c      5e      	� 5f      #��[ 6"   # [ 5g   "   ��5h   "   �� *ShowVeteriansViewCommand+ 6O   �� *IsVetViewActive+.��5i      �� $ 
Horizontal=�6%   .+�5j        $ 
UserDoctor=�6+   #��[ 6=   �� 5k      $��Veterinarians��6(   #��[	 6=   5l      5n      	� 5o      #��[ 6"   # [ 5p   "   ��5q   "   �� *ShowAppointmentsViewCommand+.��5r      �� $ 
Horizontal=�6%   .+�5s        $ Calendar=�6+   #��[ 6;   �� 5t      $��Appointments��6(   #��[	 6<   5u      5w      	� 5x      #��[ 6&   # [ 5y   &   ��5z   &   �� *ShowProfileViewCommand+.��5{      �� $ 
Horizontal=�6)   .+�5|   "     $ UserAlt=�6/   #��[ 6>   �� 5}   "   $��Profile��6,   #��[	 6;   5~      5�      5�      5�      5�      �� 5�      $ 	0,10,10,0��6   $��1��5�      
�������._�5�      �  � RowDefinitions 5�      �� 5�      $��25 �6(   �� 5�      $��35 �6)   �� 5�      $��* �6(   .+�5�      �� -   5         ��Name$ pnlControlBar��5�   "   $��0��5�   !   $ 
Horizontal=�5�   "   $��RightToLeft=�5�   "   
������ $��0,0,5,0q�5�   "   .+�5�      �� -   5         ��Name$ btnColse��5�   !    
 controlButton#��[
 5�   !   # [ 5�   !    � Cursor$
 Hand��5�   !   .��5�        $ Xmark=�6+     controlButtonIcon#��[ 68   5�      �� 5�      -   5        $ btnMaximize��5�   !   #��[
 5�   !   # [ 5�   !   $
 Hand��5�   !   .��5�        $ WindowMaximize=�6+   #��[ 6A   5�      �� 5�      -   5        $ btnMinimize��5�   !   $
 Hand��5�   !   #��[
 5�   !   # [ 5�   !   .��5�        $ WindowMinimize=�6+   #��[ 6A   5�      5�      � 5�      $��1��6    5�      �� 5�      �� 5�      .+�5�      �� $��0��6%   $ 
Horizontal=�5�   %   $��Center=�5�   %   .+�5�        $��20��5�   +   $��20��5�   +    
 color6   
Foreground# [ 5�   +   $��	35,0,10,0q�5�   +    5�   +   �� *Icon+5�   +   �� 5�        color10#��[ 5�   (   $��16(�5�   (   $��
Monsterrat)�5�   (   $��Medium"�5�   (   $��Center=�5�   (   ��5�   (   �� *	Caption+5�   (   5�      �� 5�      $��1��6%   $ 
Horizontal=�5�   %   $��RightToLeft=�5�   %   $��Center=�5�   %   $��0,0,10,0q�5�   %   .+�5�      ��   
iconButton#��[ 6%   $	��100��6I   # [ 5�   %   ��6C   �� *LogOutCommand+.��5�   "   �� $ 
Horizontal=�6-   .+�5�   &     $ 	AngleLeft=�63     iconButtonIcon#��[ 6D   �� 5�   &   $��Log Out��60   $��Center=�6?   $��Center=�6\   $��15(�6w   $��Medium"�6�   5�   '   5�   #   5�      �� 5�      #��[ 5�   (   $��
Monsterrat)�5�   (   $��12(�5�   (   $��Center=�5�   (   ��5�   (   �� * CurrentUserAccount.DisplayName+5�   (   A� 5�      $��35��6&   $��35��62     color12#��[ 5�   &   $��2��5�   &   $��	10,0,10,0q�5�   &   ��5�   "   �� 5�   &    �� ImageSource 61   �� *#!CurrentUserAccount.ProfilePicture+5�      �� 5�      -   5        $ CalendarButton��5�   %   #��[ 6=   # [ 5�   %   .��5�   "     $ Calendar=�6/   #��[ 6?   5�      � 5�      -   5         �Name$ CalendarPopup��5�   $   $��Bottom=�6;    � 	StaysOpen$
 True��6�    � PlacementTarget 6N   ��  �� ElementName$ CalendarButton��.��5�   "   �� $
��auto��6)   $
��auto��66   $��4q�6D   #��[ 6X   ._�5�   &   &   System.Windows.Controls.Calendar  -   5          Name$ 
MyCalendar��5�   /   5�   #   5�      �� 5�      -   5        $ MyButton��5�   %   #��[ 67   # [ 6[   .��5�   "     $
 Bell=�6/   #��[ 6;   5�      � 5�      -	   5        $ NotificationPopup��5�   $   $��Bottom=�5�   (   $��False��5�   (    5�   (   �� $ MyButton��.��5�   "   �  5�   &   �� 5�   *   $
��Auto �68   �� 5�   *   $��* �68   .+�5�   &   �� $��1��6-   $
��Auto��6:   $
��Auto��6G   
�������#��[ 5�   1   $��4q�6W   ._�5   *   �� $��Center=�6]   $��4q�6z   ��67   �� *Notifications+��5  .   �� 5  2   .R�5  6   �� #��[ 6=   $��1q�6d    �� Padding$ 2q�6x   $��2q�6�   $ 3��6�   ._�5  :   �� $ 
Horizontal=�6E   $��LeftToRight=�6^   $��3 3 3 3q�6z   .+�5  >     $
 Bell=�6K   $��12��6W   $��12��6b   $��0 0 5 0q�6n   �� 5  >   $��Center=�5  A   $��Center=�5  B   $��14(�5	  H   ��5  H   �� *	Message+5	  H   5
  ;   5  7   5  3   5  +   5  '   5  #   5     5     5     �� 5     $��2��5  %   $��	25,25,0,0q�5  %   ��5  %   �� *CurrentChildView+5     5     5#     5&     5'     5)     