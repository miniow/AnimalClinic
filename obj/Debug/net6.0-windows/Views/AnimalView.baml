   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:AnimalClinic.ViewsAnimalClinic.Views  5      #    AnimalClinic.Views.AnimalView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      ,local clr-namespace:AnimalClinic.Views  5      .��5
      �   � RowDefinitions  5   
   �� 5      $��45 �6   �� 5      $��* �6   �� 5      $��10 �6   .+�5   
   � $��0��6   .+�5      � .+�5      �� $��You have ... Animals��6   $��18(�68   $��SemiBold"�6F   $��Center=�6\   6y   �� 5         	addButton#��[  6   $��Right=�6<   .��5      ��  �� Orientation$ 
Horizontal=�6!   .+�5      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$	 Add=�6'     addiconButtonIcon#��[ 62   $��Center=�6]   $��11��6x   $��11��6�   $��0 0 10 0q�6�   �� 5      $��Add New Animal��6$   5      5      5      5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ Animals��5   �     DataGridStyle1#���  6     DataGridCellStyle1   	CellStyle# �  6<     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6m     DataGridRowStyle1   RowStyle# �  6�   $��1��6�      Columns 5      4  .System.Windows.Controls.DataGridCheckBoxColumn  5       ,  &System.Windows.Controls.DataGridColumn   CanUserResize$ False��6)   	   Width5  /System.Windows.Controls.DataGridLengthConverter$
	 auto 6?   
   HeaderTemplate
 5!      �� 5"      .R�5#      �� 5$      5&      0  *System.Windows.Controls.DataGridTextColumn  5(         Header$ #��6%      
IsReadOnly$
 True��60   $ False��6B   $
	 auto 6X   4  .System.Windows.Controls.DataGridTemplateColumn  5)      $
 Name��6)   $
 True��67   $
	 auto 6I      CellTemplate 5*      �� 5+      .R�5,      �� $ 
Horizontal=�6)   .+�5-   "   �� $��25��6)   $��25��64    �� CornerRadius$ 50��6@   $��0 0 10 0q�6R   
���  ��._�5.   &   �� $
��... ��60   $��Center=�6<   $��Center=�6W   
�������$��0 0 0 1q�6�   5/   #   �� 50   "   $	��...��6,   $��Center=�67   51      52      55        56      $ Genger��6%   $
 True��65   $ False��6G   $
	 auto 6]     57      $ Age (Months)��6%   $
 True��6;   $ False��6M   $
	 auto 6c     58      $  ��6%   $
 True��6/   $ False��6A   $
	 auto 6W     59      $  ��6%   $
 True��6/   $ False��6A   $
	 auto 6W     5:      $  ��6%   $
 True��6/   $ False��6A   $
	 auto 6W   5=      5O      5P      