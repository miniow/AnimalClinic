   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:AnimalClinic.CustomControlsAnimalClinic.CustomControls  5   	   6    0AnimalClinic.CustomControls.AddAppointmentDialog   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:AnimalClinic.CustomControls     5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	   -   5          � WindowStyle$
  None=�5	   	    � Title$ AddAppointmentDialog��5   	   $	��460��6'   $	��400��67   $	��400��6F   $	��460��6R   .��5      �  � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $
��auto �6   �� 5      $��30 �6   .+�5   
   �� $��0��6   .+�5      �� -   5         � Cursor$
 Hand��5      $��Center=�6#   $��Right=�6S   $��
225 0 10 0q�6o   $��30��6�   $��30��6�      controlButton#��[  6�   .��5      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ Xmark=�6     controlButtonIcon#��[ 6,   5      5      �� 5   
   $��Adding New Appointment��6   $��1��62   $��20 0 0 0q�6?   $��16(�6Q   $��Medium"�6_   $��
Monsterrat)�6s   $��Center=�6�   $
��Left=�6�   �� 5   
   $��2��6   .+�5      � $��10q�6    5      �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5       $
��Auto �6$   �� 5!      $
��Auto �6$   �� 5"      $
��Auto �6$   �� 5#      $
��Auto �6$   �� 5$      $
��Auto �6$   �� 5%      $
��Auto �6$   �� 5&      $
��Auto �6$    � ColumnDefinitions 5)      �� 5*      $
��Auto �6'   �� 5+      $��* �6'   .+�5.      �� $��1��6   $��0��6)   $��Animal:��69   $��Right=�6I   $��5q�6e    �� Padding$ 5q�6p   �� 5/      $��1��6   $��1��6&    
 color2#��[ 66   $��36��6]    �� Padding$ 4q�6i   $��1q�6v    �� CornerRadius$ 14��6�   ._�50      �� -   5        	 ��Name$	 	animal_cb��50        ComboBoxStyle1#���  62   
 �� DisplayMemberPath$

 Name��6{    �� SelectedValuePath$ Id��6�   ��6[   �� *	Animals+ �� SelectedValue 6�   �� *
AnimalId+6�   51      �� 55      $��2��6   $��0��6)   $��Right=�69   $��	Veterian:��6U   $��5q�6f   �� 56      $��2��6   $��1��6&   #��[ 66   $��36��6]   $ 4q�6i   $��1q�6v   $ 14��6�   ._�57      �� -   5        $	 vet_cb��57      #���  6/   $
 FullName��6u   $ Id��6�   ��6X   �� *Vets+ 6�   �� *VetId+6�   58      �� 5<      $��3��6   $��0��6)   $��Visit Date:��69   $��5q�6L   $ 5q�6W   (  "System.Windows.Controls.DatePicker  5=      -   5          Name$ dob_dp��5=      $��3��6.   $��1��6;   $��5q�6K   �� 5@      $��4��6   $��0��6)   $��Notes:��69   $��Right=�6G   $��5q�6c   $ 5q�6n   �� 5A      $��4��6   $��1��6&   #��[ 66   $
��Auto��6]   $��1q�6l   $ 14��6�   ._�5B      �� -   5         ��Name$ notes_tb��5B   "   $��5q�64   $��0q�6?   5C      �� 5D      $��5��6   $��1��6)   
���  ��$��Medium"�6J   ��6^   �� *ErrorMessage+6~   �� 5E      $��9��6   $��2��6*    �� Orientation$ 
Horizontal=�6:   $��Right=�6S   .+�5F      �� -   5         ��Name$ btnSave��5F      $
��Save��6.   $��5q�6=     	addButton#��[ 6^   5G      5H      5I      5K      5M      5N      