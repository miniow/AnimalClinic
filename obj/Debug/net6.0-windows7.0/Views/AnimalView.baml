   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:AnimalClinic.ViewModelsAnimalClinic.ViewModels  5      7 clr-namespace:AnimalClinic.ViewsAnimalClinic.Views  5      #    AnimalClinic.Views.AnimalView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      5	viewModel%clr-namespace:AnimalClinic.ViewModels  5      ,local clr-namespace:AnimalClinic.Views  5        � DataContext  5      -   'AnimalClinic.ViewModels.AnimalViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $��45 �6   �� 5      $��* �6   �� 5      $��10 �6   .+�5   
   � $��0��6   .+�5      � .+�5      �� $��18(�69   $��SemiBold"�6G   $��Center=�6]   ��6   �� *AnimalCount+6z   �� 5         	addButton#��[  6H   $��Right=�6k   ��6   �� *OpenAddAnimalDialogCommand+.��5      ��  �� Orientation$ 
Horizontal=�6!   .+�5      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$	 Add=�6'     addiconButtonIcon#��[ 62   $��Center=�6]   $��11��6x   $��11��6�   $��0 0 10 0q�6�   �� 5      $��Add New Animal��6$   5      5      5      5       &   System.Windows.Controls.DataGrid  5#   
   -   5          DataGridStyle1#���  5#        DataGridCellStyle1   	CellStyle# �  6<     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6m     DataGridRowStyle1   RowStyle# �  5$      $��1��6C   $��0 0 10 0q�5%      ��5$   P   �� *	Animals+   Columns 5&      4  .System.Windows.Controls.DataGridTemplateColumn  5.      ,  &System.Windows.Controls.DataGridColumn   Header$ #��6)   	   Width5  /System.Windows.Controls.DataGridLengthConverter$
	 auto 64   
   CellTemplate
 5/      �� 50      .R�51      �� ��6(   ��  �� RelativeSource ��  �� AncestorType DataGridRow �� Path$ Header�52      54        55      $ Animal��6)      
IsReadOnly$
 True��69   $	 * 6K   
 56      �� 57      .R�58      �� $ 
Horizontal=�6)   .+�59   "   A� $��35��6*   $��35��66     color12#��[ 5:   +   $��2��5;   +   $��	10,0,10,0q�5<   +   ��5=   &   �� 5>   *    �� ImageSource 65   �� *	Picture+5@   #   �� 5A   "   $��Center=�6B   ��6,   �� *Name+6B   5B      5C      5E      0  *System.Windows.Controls.DataGridTextColumn  5G      $ Gender��6%   $
 True��65      CanUserResize$ False��6G   $	 * 6]   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6g   �� *Gender+  5H      $ Age (Months)��6%   $
 True��6;   $ False��6M   $	 * 6c    6m   �� *AgeInMonths+  5I      $ Color��6%   $
 True��64   $ False��6F   $	 * 6\    6f   �� *Color+  5J      $ Breed��6%   $
 True��64   $ False��6F   $	 * 6\    6f   �� *Breed+  5K      $ Specie��6%   $
 True��65   $ False��6G   $	 * 6]    6g   �� *Specie+  5L      $ 
Operations��6)   $
 True��6=   $
	 auto 6O   
 5M      �� 5N      .R�5O      �� $ 
Horizontal=�6)   .+�5P   "   ��   gridEditButton#��[ 6)    � Cursor$
 Hand��6Q   ��6_   �� *DataContext.EditAnimalCommand+ ��  DataGrid��6�   �� .��5Q   &     $ Pencil=�63     gridButtonIcon#��[ 6A   5R   #   �� 5S   "    	 gridRemoveButton#��[	 6)   $
 Hand��6S   $��5 0 0 0q�6a   ��6r   �� *!DataContext.DeleteAnimalCommand+ ��  DataGrid��6�   �� .��5T   &     $ 
DeleteLeft=�63   #��[ 6E   5U   #   5V      5W      5Z      5\      5n      5o      