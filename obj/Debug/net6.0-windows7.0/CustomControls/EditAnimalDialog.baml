   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:AnimalClinic.CustomControlsAnimalClinic.CustomControls  5   	   2    ,AnimalClinic.CustomControls.EditAnimalDialog   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	   5local)clr-namespace:AnimalClinic.CustomControls  5   	   -   5          � WindowStyle$
  None=�5	   	    � Title$ Edit Animal��5
   	   $	��460��6   $	��400��6-   $	��400��6<   $
��auto��6H   ��5      �� 5   
    �� 
TargetType" �6   .�5      ��  �� Property � �� �� Value
 �����6+   5      .��5      �  � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $
��auto �6   �� 5      $��30 �6   .+�5   
   �� $��0��6   .+�5      �� -   5         � Cursor$
 Hand��5      $��Center=�6#   $��Right=�6S   $��
225 0 10 0q�6o   $��30��6�   $��30��6�      controlButton#��[  6�   .��5      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ Xmark=�6     controlButtonIcon#��[ 6,   5      5      �� 5   
   $��Edit Animal��6   $��1��6'   $��20 0 0 0q�64   $��16(�6F   $��Medium"�6T   $��
Monsterrat)�6h   $��Center=�6�   $
��Left=�6�   �� 5   
   $��2��6   .+�5       � $��10q�6    5!      �� 5"      $
��Auto �6$   �� 5#      $
��Auto �6$   �� 5$      $
��Auto �6$   �� 5%      $
��Auto �6$   �� 5&      $
��Auto �6$   �� 5'      $
��Auto �6$   �� 5(      $
��Auto �6$   �� 5)      $
��Auto �6$   �� 5*      $
��Auto �6$   �� 5+      $
��Auto �6$    � ColumnDefinitions 5.      �� 5/      $
��Auto �6'   �� 50      $��* �6'   .+�52      �� $��1��6   $��0��6)   $��Name:��69   $��Right=�6G   $��5q�6c   	 �� Padding$	 5q�6n   �� 53      $��1��6   $��1��6&    
 color2#��[ 66   $��25��6]   $��1q�6j   
 �� CornerRadius$
 14��6~   ._�54      �� -   5         ��Name$ name_tb��54   F     AddFiedTextBox#��[ 6   $��3q�6W   55      �� 56      $��2��6   $��0��6)   $��Right=�69   $��Gender:��6U   $��5q�6d   �� 57      $��2��6   $��1��6*   .+�58      	� -   5         	�Name$ 	gender_rb��58   N     RadioButtonStyle1#���  6"   $��5q�6a   $
��Male��6l   $
 Hand��6{    	� 	GroupName$ Gender��6�    d� 	IsChecked$
 TrueY�6�   	� 59      #���  6"   $��5q�6N   $��Female��6Y   $
 Hand��6j   $ Gender��6x   5:      �� 5;      $��3��6   $��0��6)   $��Date of bith:��69   $��5q�6N   $	 5q�6Y   (  "System.Windows.Controls.DatePicker  5<      -   5          Name$ dob_dp��5<      $��3��6.   $��1��6;   $��3q�6K   �� 5?      $��4��6   $��0��6)   $��Color:��69   $��Right=�6G   $��5q�6c   $	 5q�6n   �� 5@      $��4��6   $��1��6&   #��[ 66   $��25��6]   $��1q�6j   $
 14��6~   ._�5A      �� -   5        $ color_tb��5A      #��[ 60   $��3q�6X   5B      �� 5D      $��5��6   $��0��6)   $��Specie:��69   $��Right=�6H   $��5q�6d   $	 5q�6o   �� 5E      $��5��6   $��1��6&   #��[ 66   $��25��6]   $��1q�6j   $
 14��6~   ._�5F      �� -   5        $ 	specie_tb��5F   F   #��[ 6   $��5��6Y   $��1��6f   $��3q�6v   5G      �� 5I      $��6��6   $��0��6)   $��Breed:��69   $��Right=�6G   $��5q�6c   �� 5J      $��6��6   $��1��6&   #��[ 66   $��25��6]   $��1q�6j   $
 14��6~   ._�5K      �� -   5        $ breed_tb��5K      #��[ 60   $��6��6X   $��1��6e   $��3q�6u   5L      �� 5M      $��7��6   $��0��6)   $��Picture:��69   $��Right=�6I   $��5q�6e   �� 5N      -	   5        $��7��5N      $��2��6&   
�������$��1q�6I   $
 5��6]   $
��Left=�5O   
   $��Stretch=�6%   $��5q�6A   $	��100��6L   $	��100��6X   
������� J� 	AllowDrop$
 True��5P   !   ._�5Q      �� -
   5         ��Name$ animalImage��5Q      $��Uniform=�61   5R      �� 5U      $��8��6   $��1��6)   
���  ��$��Medium"�6J   ��6^   �� *ErrorMessage+6~   �� 5W      $��9��6   $��2��6*    �� Orientation$ 
Horizontal=�6:   $��Right=�6S   .+�5X      �� -   5         ��Name$ btnSave��5X      $
��Save��6.   $��5q�6=     	addButton#��[ 6^   5Y      5Z      5[      5]      5^      5_      