   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:AnimalClinic.ViewsAnimalClinic.Views  5   	   A%clr-namespace:AnimalClinic.ViewModelsAnimalClinic.ViewModels  5   	   !    AnimalClinic.Views.MainView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:AnimalClinic.Views     5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	   5	viewModel%clr-namespace:AnimalClinic.ViewModels  5   	     � Title$  MainWindowView��5
   	   $	��100��6    $	��100��60    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ 	CanResize=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      +   %AnimalClinic.ViewModels.MainViewModel  5   
    � 	Resources 5       �� DataType+   %AnimalClinic.ViewModels.HomeViewModel!   AnimalClinic.Views.HomeView-   'AnimalClinic.ViewModels.AnimalViewModel#   AnimalClinic.Views.AnimalView��%�   (��       5      *, +)(�� 2     5      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      5      .��5      ��  �� CornerRadius$ 10��6   $��1q�5      ��5       �� 5!      	 �� 
StartPoint$		 0,0&�6&   
 �� EndPoint$	
 1,1&�67   .��5"      �    winBorderColor1 � Color# [  6#    � Offset$ 0Q�6L   � 5#        winBorderColor2# [ 6#   $	 0.7Q�6L   � 5$        winBorderColor3# [ 6#   $ 1Q�6L   5%      ._�5(   
   �  � ColumnDefinitions 5*      �� 5+      $	��200 �6#   �� 5,      $��* �6#   .+�5/      �� $ 	10,0,0,10��6   $��0��50      ��51      �� 52      $		 0,0&�6*   $
 1,0.7&�6;   .��53      �   secondaryBackColor1# [ 6'   $ 0Q�6T   � 54        secondaryBackColor2# [ 6'   $ 1Q�6T   55      ._�57      �� .+�59      �� $��55��5:   !   $��
15,25,0,40q�5;   !   .+�5<      �� $=��7C:\Users\zymci\Desktop\kck\AnimalClinic\Images\logo.png��6    $��30��6a   �� 5=      $��ANIMAL CLINIC��6$     titleColor1#��[ 5>   $   $��20(�5?   $   $��
Monsterrat)�5@   $   $��Medium"�5A   $   $��Center=�5B   $   $��10,0,0,0q�5C   $   5D      �� 5E      .+�5G      	�   
menuButton#��[ 6"    
 color1
 � Tag# [ 5H   "    d� 	IsChecked$
 TrueY�5I   "   $��0,0,0,0q�5J   "   ��5K   "   �� *ShowHomeViewCommand+.��5L      ��  �� Orientation$ 
Horizontal=�6%   .+�5N   "   !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ HouseChimneyMedical=�6/     menuButtonIcon#��[ 6J   �� 5O   "   $��Clinic��6,    	 menuButtonText#��[	 6:   5Q      5S      	� 5T      #��[ 6"   # [ 5U   %   ��5V   "   �� *ShowAnimalViewCommand+.��5W      �� $ 
Horizontal=�6%   .+�5X        $	 Paw=�6+   #��[ 66   �� 5Y      $��Animals��6(   #��[	 67   5Z      5\      	� 5]      #��[ 6"   # [ 5^   "   ��5_   "   �� *ShowVeteriansViewCommand+.��5`      �� $ 
Horizontal=�6%   .+�5a        $ 
UserDoctor=�6+   #��[ 6=   �� 5b      $��Veterinarians��6(   #��[	 6=   5c      5e      	� 5f      #��[ 6"   # [ 5g   "   ��5h   "   �� *ShowAppointmentsViewCommand+.��5i      �� $ 
Horizontal=�6%   .+�5j        $ Calendar=�6+   #��[ 6;   �� 5k      $��Appointments��6(   #��[	 6<   5l      5n      	� 5o      #��[ 6&   # [ 5p   &   ��5q   &   �� *ShowProfileViewCommand+.��5r      �� $ 
Horizontal=�6)   .+�5s   "     $ UserAlt=�6/   #��[ 6>   �� 5t   "   $��Profile��6,   #��[	 6;   5u      5w      	� 5x      #��[ 6&   # [ 5y   "   ��5z   &   �� *ShowSettingsViewCommand+.��5{      �� $ 
Horizontal=�6%   .+�5|        $
 Gear=�6+   #��[ 67   �� 5}      $��Settings��6(   #��[	 68   5~      5�      5�      5�      5�      �� 5�      $ 	0,10,10,0��6   $��1��5�      
�������._�5�      �  � RowDefinitions 5�      �� 5�      $��25 �6(   �� 5�      $��35 �6)   �� 5�      $��* �6(   .+�5�      �� -   5         ��Name$ pnlControlBar��5�   "   $��0��5�   !   $ 
Horizontal=�5�   "   $��RightToLeft=�5�   "   
������ $��0,0,5,0q�5�   "   .+�5�      �� -   5         ��Name$ btnColse��5�   !    
 controlButton#��[
 5�   !   # [ 5�   !   .��5�        $ Xmark=�6+     controlButtonIcon#��[ 68   5�      �� 5�      -   5        $ btnMaximize��5�   !   #��[
 5�   !   # [ 5�   !   .��5�        $ WindowMaximize=�6+   #��[ 6A   5�      �� 5�      -   5        $ btnMinimize��5�   !   #��[
 5�   !   # [ 5�   !   .��5�        $ WindowMinimize=�6+   #��[ 6A   5�      5�      � 5�      $��1��6    5�      �� 5�      �� 5�      .+�5�      �� $��0��6%   $ 
Horizontal=�5�   %   $��Center=�5�   %   .+�5�        $��20��5�   +   $��20��5�   +    
 color6   
Foreground# [ 5�   +   $��	35,0,10,0q�5�   +    5�   +   �� *Icon+5�   +   �� 5�        color10#��[ 5�   (   $��16(�5�   (   $��
Monsterrat)�5�   (   $��Medium"�5�   (   $��Center=�5�   (   ��5�   (   �� *	Caption+5�   (   5�      �� 5�      $��1��6%   $ 
Horizontal=�5�   %   $��RightToLeft=�5�   %   $��Center=�5�   %   $��0,0,10,0q�5�   %   .+�5�      ��   
iconButton#��[ 6%   # [ 5�   %   .��5�   "     $ 	AngleDown=�6/     iconButtonIcon#��[ 6@   5�      �� 5�      #��[ 5�   (   $��
Monsterrat)�5�   (   $��12(�5�   (   $��Center=�5�   (   ��5�   (   �� * CurrentUserAccount.DisplayName+5�   (   A� 5�      $��35��6&   $��35��62     color12#��[ 5�   &   $��2��5�   &   $��	10,0,10,0q�5�   &   ��5�   "   �� 5�   &    �� ImageSource$B <C:\Users\zymci\Desktop\kck\AnimalClinic\Images\user-icon.png��61   5�      �� 5�      #��[ 6%   # [ 5�   %   .��5�   "     $ Clock=�6/   #��[ 6<   5�      �� 5�      #��[ 6%   # [ 5�   %   .��5�   "     $ Envelope=�6/   #��[ 6?   5�      �� 5�      #��[ 6%   # [ 5�   %   .��5�   "     $
 Bell=�6/   #��[ 6;   5�      5�      5�      �� 5�      $��2��5�   %   $��	25,25,0,0q�5�   %   ��5�   %   �� *CurrentChildView+5�      5�      5�      5�      5�      5     