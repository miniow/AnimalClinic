   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:AnimalClinic.ViewModelsAnimalClinic.ViewModels  5      7 clr-namespace:AnimalClinic.ViewsAnimalClinic.Views  5      )    #AnimalClinic.Views.AppointmentsView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      5	viewModel%clr-namespace:AnimalClinic.ViewModels  5      ,local clr-namespace:AnimalClinic.Views  5        � DataContext  5      2   ,AnimalClinic.ViewModels.AppointmentViewModel  5   
   .��5      ��  �� Padding$ 10q�6   ._�5   
   �  � RowDefinitions 5      �� 5      $��45 �6    �� 5      $��45 �6    �� 5      $��* �6    .+�5      ��  �� Orientation$ 
Horizontal=�6   $��0��62   .+�5      ��    pagingButton2#��[  6   ��6@   �� *ShowActiveAppointments+.��5      �� $ 
Horizontal=�6!   .+�5      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ CalendarDay=�6'     addiconButtonIcon#��[ 6:      
Foreground
 �"�"�6e   �� 5      $��Active��6$   $��5 0 0 0q�62   5      5      �� 5      #��[  6   ��6@   �� *ShowCancelledAppointments+.��5      �� $ 
Horizontal=�6!   .+�5         $ CalendarXmark=�6'   #��[ 6<   
 �  ��6g   �� 5!      $��Canceled��6$   $��5 0 0 0q�64   5"      5#      �� 5$      #��[  6   ��6@   �� *ShowHistoryAppointments+.��5%      �� $ 
Horizontal=�6!   .+�5&        $ CalendarCheck=�6'   #��[ 6<   
 ��� �6g   �� 5'      $��History��6$   $��5 0 0 0q�63   5(      5)      5+      �� 5,      -   5         ��Name$ buttonAddAppointment��5,        	addButton#��[ 63   $��1��6V   $��Right=�6c   $��Center=�6   ��6�   �� *AddApointment+.��5-      �� $ 
Horizontal=�6   .+�5.        $
 Plus=�6#   #��[ 6/   �� 5/      $��Add Appointment��6    $��5 0 0 0q�67   50      51      &   System.Windows.Controls.DataGrid  54      -   5          DataGridStyle1#���  54        DataGridCellStyle1   	CellStyle# �  6@     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6q     DataGridRowStyle1	   RowStyle#	 �  55      $��2��6G   $��0 0 10 0q�6�   ��6T   �� *CurrentAppointments+
   Columns
 56      4  .System.Windows.Controls.DataGridTemplateColumn  5>      ,  &System.Windows.Controls.DataGridColumn   Header$ #��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 68      CellTemplate 5?      �� 5@      .R�5A   "   �� ��6,   ��  �� RelativeSource ��  �� AncestorType DataGridRow �� Path$ Header�5B      5D        5R      $ Animal��6-      
IsReadOnly$
 True��6=   $ * 6O    5S      �� 5T      .R�5U   "   �� $ 
Horizontal=�6-   .+�5V   &   A� $��35��6.   $��35��6:     color12#��[ 5W      $��2��5X      $��	10,0,10,0q�5Y      ��5Z   *   �� 5[   .    �� ImageSource 69   �� *AnimalPicture+5]   '   �� 5^   &   $��Center=�6L   ��60   �� *
AnimalName+6L   5_   #   5`      5b        5d      $ Veterian��6-   $
 True��6?   $ * 6Q    5e      �� 5f      .R�5g   "   �� $ 
Horizontal=�6-   .+�5h   &   A� $��35��6.   $��35��6:   #��[ 5i      $��2��5j      $��	10,0,10,0q�5k      ��5l   *   �� 5m   .    69   �� *VeterianPicture+5o   '   �� 5p   &   $��Center=�6N   ��60   �� *VeterianName+6N   �� 5q   &   $�� ��60   �� 5r   &   $��Center=�6R   ��60   �� *VeterianSurename+6R   5s   #   5t      5v      0  *System.Windows.Controls.DataGridTextColumn  5x      $
 Date��6)   $
 True��67      CanUserResize$ False��6I   $ * 6_   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6i   �� *Date+  5z      $ Notes��6-   $
 True��6<   $ * 6N    5{      �� 5|      .R�5}   "   �� $��Center=�6C   $
��Wrap=�6^   ��6,   �� *Notes+6^   5~      5�        5�      $ 
Operations��6-   $
 True��6A   $
 auto 6S    5�      �� 5�      .R�5�   "   �� $ 
Horizontal=�6-   .+�5�   &   ��   gridRemoveButton#��[ 6-   $��5 0 0 0q�6W   ��6h   �� *DataContext.CancelApointment+ ��  DataGrid��6�   �� .��5�   *     $ 
DeleteLeft=�67    	 gridButtonIcon#��[	 6I   5�   '   5�   #   5�      5�      5�      5�      5�      5�      