   M S B A M L   `   `   `  ����G  CAnimalClinic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AnimalClinicAnimalClinic  5      b ^PresentationFramework.Aero2, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes 5          AnimalClinic.App   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      ,localclr-namespace:AnimalClinic     5      ]themeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2     5        �� 	Resources  5       �� MergedDictionaries �� Source   AddFiedTextBox �� 
TargetType �� Property �� Value   OptionMark.Static.Background �� Color  OptionMark.Static.Border  OptionMark.Static.Glyph # OptionMark.MouseOver.Background  OptionMark.MouseOver.Border  OptionMark.MouseOver.Glyph ! OptionMark.Pressed.Background  OptionMark.Pressed.Border 	 OptionMark.Pressed.Glyph "
 OptionMark.Disabled.Background  OptionMark.Disabled.Border  OptionMark.Disabled.Glyph  FocusVisual �� StrokeDashArray J� SnapsToDevicePixels  OptionMarkFocusVisual  FocusVisual1  TextBox.Static.Background  ComboBoxEditableTextBox	 �� 
TargetType
 ��Name  ComboBox.Static.Background �� EndPoint �� 
StartPoint � Color � Offset  ComboBox.Static.Border  ComboBox.Static.Glyph ' #ComboBox.Static.Editable.Background # ComboBox.Static.Editable.Border . *ComboBox.Static.Editable.Button.Background * &ComboBox.Static.Editable.Button.Border ! ComboBox.MouseOver.Background  ComboBox.MouseOver.Border  ComboBox.MouseOver.Glyph * &ComboBox.MouseOver.Editable.Background & "ComboBox.MouseOver.Editable.Border 1 -ComboBox.MouseOver.Editable.Button.Background - )ComboBox.MouseOver.Editable.Button.Border   ComboBox.Pressed.Background ! ComboBox.Pressed.Border " ComboBox.Pressed.Glyph (# $ComboBox.Pressed.Editable.Background $$  ComboBox.Pressed.Editable.Border /% +ComboBox.Pressed.Editable.Button.Background +& 'ComboBox.Pressed.Editable.Button.Border  ' ComboBox.Disabled.Background ( ComboBox.Disabled.Border ) ComboBox.Disabled.Glyph )* %ComboBox.Disabled.Editable.Background %+ !ComboBox.Disabled.Editable.Border 0, ,ComboBox.Disabled.Editable.Button.Background ,- (ComboBox.Disabled.Editable.Button.Border . ComboBoxToggleButton ��Name F�Name �� Triggers ^� 
Conditions �� Binding �� RelativeSource �� AncestorType �� Value �� Mode �� 
TargetName P� Property P� Value / ComboBoxEditableTemplate �Name � ColumnDefinitions �Name � AllowsTransparency5  /Microsoft.Windows.Themes.SystemDropShadowChrome  Name    Color! �� MaxDropDownHeight" �� ElementName# �� ClearTypeHint$ ��Name% ��Name& ��Name-  'System.Windows.Input.KeyboardNavigation'   DirectionalNavigation( d�Name) d� 	IsChecked* �� Mode+ ��Name, �� 
IsReadOnly- P� 
SourceName. ]� 
Conditions/ �� Property 0 ComboBoxTemplate0 ��Name#1 �� SelectionBoxItemStringFormat2 �� ContentStringFormat3 �� SelectionBoxItemTemplate4 �� SelectionBoxItem5 J� IsHitTestVisible 1 ComboBoxStyle16 �� Triggers !2 RadioButton.Static.Background 3 RadioButton.Static.Border 4 RadioButton.Static.Glyph $5  RadioButton.MouseOver.Background  6 RadioButton.MouseOver.Border 7 RadioButton.MouseOver.Glyph "8 RadioButton.Pressed.Background 9 RadioButton.Pressed.Border : RadioButton.Pressed.Glyph #; RadioButton.Disabled.Background < RadioButton.Disabled.Border = RadioButton.Disabled.Glyph > RadioButtonStyle17 �� CornerRadius8 A�Name9 J� Opacity ? CheckBoxStyle1: �� Padding; �� Stretch 
@ color2 A color12 B ColumnHeaderGripperStyle< �� 
ResourceId= �� TypeInTargetAssembly&   System.Windows.Controls.DataGrid> �Name? � Points C DataGridStyle15  /System.Windows.Controls.DataGridLengthConverter@ � RowDefinitionsA   SelectAllCommand7  1System.Windows.Controls.DataGridHeadersVisibility
B   AllC �� ConverterParameter!D   HeadersVisibilityConverterE �� 	ConverterG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenterF  NameG   ColumnH ��NameI �� CanContentScrollJ ��NameK �� ScrollableHeightL � MaximumM �� OrientationN �� ViewportHeightO �� ViewportSize*P �� #ComputedVerticalScrollBarVisibilityQ � ValueR �� ScrollableWidthS �� ViewportWidth,T �� %ComputedHorizontalScrollBarVisibility D DataGridCellStyle1*  $System.Windows.Controls.DataGridCell E DataGridColumnHeaderStyle1=  7System.Windows.Controls.Primitives.DataGridColumnHeader3	  -Microsoft.Windows.Themes.DataGridHeaderBorderU 	  	IsPressedV J� IsMouseOverW 	  	IsHoveredX   CanUserSortY 	  IsClickableZ   SortDirection[ 	  SortDirection\   SeparatorVisibility] 	  SeparatorVisibility^   SeparatorBrush_ 	  SeparatorBrush` n�Name F DataGridRowStyle1)
  #System.Windows.Controls.DataGridRow?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid?  9System.Windows.Controls.Primitives.DataGridCellsPresentera 
  
ItemsPanelA  ;System.Windows.Controls.Primitives.DataGridDetailsPresenterb 
  DetailsVisibility$c   SelectiveScrollingOrientation;  5System.Windows.Controls.SelectiveScrollingOrientationd   Vertical#e   RowDetailsScrollingConverter:  4System.Windows.Controls.Primitives.DataGridRowHeader
f   Row 
G color1�� 5   
    5	      �� 5
      $ /Styles/UIcolors.xaml?�6%   �� 5      $ /Styles/ButtonStyles.xaml?�6%   %`  &	        &	 m     &	 �     &	 �     &	 �     &	 �     &	     &	 ?    &	 b    &		 �    &	
 �    &	 �    &	 �    &	     &	 �    &	 ~    &	 1    &	 T    &	 �    &	 '    &	 J    &	 m    &	 �    &	 �    &	 �    &	 �    &	 �    &	 �    &	 �    &	 	    &	 %	    &	 �	    &	  �	    &	! �
    &	" �
    &	# �
    &	$ �
    &	%     &	& �    &	' �    &	( �    &	)     &	* 4    &	+ W    &	, z    &	- �    &	. �    7  7  7  7  7  7  7  7  7  7  7  7  7  7  7 " 7   7 ! 7 # 7 $ 7 % 7 & 7 ) 7 ' 7 ( 7 * 7 + 7 , 7 - &	/ 0    7 . 7  7  &	0 �$    7 . &	1 �-    7  7 0 7 / &	2 Y0    &	3 |0    &	4 �0    &	5 �0    &	6 �0    &	7 1    &	8 )1    &	9 L1    &	: o1    &	; �1    &	< �1    &	= �1    &	> �1    7  7 2 7 3 7 4 7  7 5 7 6 7 7 7 ; 7 < 7 = 7 8 7 9 7 : &	? �9    7  7  7  7  7 @ 7  7  7 
 7  7  7  7  7 A 7 	 7 	 &	B 3C    (�� ED    5�     $"< DataGridSelectAllButtonStyle��"=  )&	C G    &	D �Q    &	E qS    7 B 7 B &	F 2V    7 A 7 G 7 @ 7 G �� 5      " ��6+   .�5      ��  � ��
 ���� 6/   �� 5       � ��$ 0q�64   5      �� 5      $ 	#FFFFFFFF��6C   �� 5      $ 	#FF707070��6?   �� 5      $ 	#FF212121��6>   �� 5      $ 	#FFF3F9FF��6F   �� 5      $ 	#FF5593FF��6B   �� 5      $ 	#FF212121��6A   �� 5      $ 	#FFD9ECFF��6D   �� 5      $ 	#FF3C77DD��6@   �� 5      $ 	#FF212121��6?   �� 5       $ 	#FFE6E6E6��6E   �� 5!      $ 	#FFBCBCBC��6A   �� 5"      $ 	#FF707070��6@   �� 5#      .�5$      ��  � �� 5%      �� 5&      .R�5'      �� $��2q�6(   $	 1 2R�63   #��� ��6I   $
 true��6�   $��1��6�   5(      5*      5+      �� 5,      .�5-      ��  � �� 5.      �� 5/      .R�50      �� $��14,0,0,0q�6(   $	 1 2R�6:   #��� ��6P   $
 true��6�   $��1��6�   51      53      54      �� 55      .�56      ��  � �� 57      �� 58      .R�59      �� $��2q�6(   $	 1 2R�63   #��� ��6I   $
 true��6�   $��1��6�   5:      5<      5=      �� 5>      $ 	#FFFFFFFF��6@   �� 5?      " ��64   .�5@      ��  �@�OverridesDefaultStyle$
 true��6:   �� 5A       �@J�	AllowDrop$
 true��6.   �� 5B       � ��$ 0��6-   �� 5C       � ��$ 0��6.   �� 5D       �@�FocusVisualStyle 65   Z� �� 5E       �@��PanningMode$ VerticalFirst=�6=   �� 5F       �@��IsFlicksEnabled$ False��6;   �� 5G       � �� 5H      �� 5I      "	 ��6*   .R�5J      �� $
 PART_ContentHost��6+   
������ $|�false��6^   $��Hidden=�6p   $��Hidden=�6�   5K      5M      5N      �� 5O      $	 0,1&�6E   $	 0,0&�6T   .��5P      � $ 	#FFF0F0F0��6   $	 0.0Q�61   � 5Q      $ 	#FFE5E5E5��6   $	 1.0Q�61   5R      �� 5S      $ 	#FFACACAC��6=   �� 5T      $ 	#FF606060��6<   �� 5U      $ 	#FFFFFFFF��6J   �� 5V      $ 	#FFABADB3��6F   �� 5W      $ Transparent��6Q   �� 5X      $ Transparent��6M   �� 5Y      $	 0,1&�6H   $	 0,0&�6W   .��5Z      � $ 	#FFECF4FC��6   $	 0.0Q�61   � 5[      $ 	#FFDCECFC��6   $	 1.0Q�61   5\      �� 5]      $ 	#FF7EB4EA��6@   �� 5^      $ 	#FF000000��6?   �� 5_      $ 	#FFFFFFFF��6M   �� 5`      $ 	#FF7EB4EA��6I   �� 5a      $	 0,1&�6X   $	 0,0&�6g   .��5b      � $ 	#FFEBF4FC��6   $	 0.0Q�61   � 5c      $ 	#FFDCECFC��6   $	 1.0Q�61   5d      �� 5e      $ 	#FF7EB4EA��6P   �� 5f      $	 0,1&�6F   $	 0,0&�6U   .��5g      � $ 	#FFDAECFC��6   $	 0.0Q�61   � 5h      $ 	#FFC4E0FC��6   $	 1.0Q�61   5i      �� 5j      $ 	#FF569DE5��6>   �� 5k      $ 	#FF000000��6=   �� 5l      $ 	#FFFFFFFF��6K   �� 5m      $ 	#FF569DE5��6G   �� 5n      $	 0,1&�6V   $	 0,0&�6e   .��5o      � $ 	#FFDAEBFC��6   $	 0.0Q�61   � 5p      $ 	#FFC4E0FC��6   $	 1.0Q�61   5q      �� 5r      $ 	#FF569DE5��6N   �� 5s      $ 	#FFF0F0F0��6C   �� 5t      $ 	#FFD9D9D9��6?   �� 5u      $ 	#FFBFBFBF��6>   �� 5v      $ 	#FFFFFFFF��6L   �� 5w      $ 	#FFBFBFBF��6H   �� 5x      $ Transparent��6S   �� 5y      $ Transparent��6O   �� 5z      " d�61   .�5{      ��  �@�OverridesDefaultStyle$
 true��6:   �� 5|       � ��$ false��6.   �� 5}       � |�$ false��6.   �� 5~       �@��	ClickMode$ Press=�6.   �� 5       � �� 5�      �� 5�      "	 d�6*   .R�5�      �� $ templateRoot��6%   8��  8�� #��z��6�   $
 true��6�   ._�5�   "   �� $ splitBorder��6)   
������ $��1q�6X   $��Right=�6l   $��0q�6�   $
 true��6�   #��� r�6�   ._�5�   &   F� $ arrow��6+   F����        ���( ��( јaQ     јaQ P����̰( � �    P����        8�� $��Center=�6�   $��0q�6�   $��Center=�6�   5�   #   5�       5�      ^� 5�   "    5�   &   �� 5�   *    64   �� *
IsEditable+ �� " �� true6�   �� 5�   *    64   �� *IsMouseOver+ �� $
 Self=�	 false6   �� 5�   *    64   �� *	IsPressed+ �� $
 Self=�	 false6}   �� 5�   *    64   �� *	IsEnabled+ �� $
 Self=� true6}   .0�5�   &   �� $ templateRoot��6C   8   � ��6]   �� 5�   &   $ templateRoot��6D   8   � ��6^   �� 5�   &   $ splitBorder��6C   8   � ��6\   �� 5�   &   $ splitBorder��6D   8   � ��6]   5�   #   P� 5�   "    �@J�IsMouseOver$
 true��6A   . �5�   &   �� $ arrow��6=   8   � ��6P   5�   #   ^� 5�   "    5�   &   �� 5�   *    64   �� *IsMouseOver+ �� $
 Self=� true6   �� 5�   *    64   �� *
IsEditable+ �� " ��	 false6�   .0�5�   &   �� $ templateRoot��6C   8   � ��6]   �� 5�   &   $ templateRoot��6D   8 	  � ��6^   5�   #   ^� 5�   "    5�   &   �� 5�   *    64   �� *IsMouseOver+ �� $
 Self=� true6   �� 5�   *    64   �� *
IsEditable+ �� " �� true6�   .0�5�   &   �� $ templateRoot��6C   8 
  � ��6]   �� 5�   &   $ templateRoot��6D   8   � ��6^   �� 5�   &   $ splitBorder��6C   8   � ��6\   �� 5�   &   $ splitBorder��6D   8   � ��6]   5�   #   P� 5�   "    � ��$
 true��6?   . �5�   &   �� $ arrow��6=   8   � ��6P   5�   #   ^� 5�   "    5�   &   �� 5�   *    64   �� *	IsPressed+ �� $
 Self=� true6}   �� 5�   *    64   �� *
IsEditable+ �� " ��	 false6�   .0�5�   &   �� $ templateRoot��6C   8   � ��6]   �� 5�   &   $ templateRoot��6D   8   � ��6^   5�   #   ^� 5�   "    5�   &   �� 5�   *    64   �� *	IsPressed+ �� $
 Self=� true6}   �� 5�   *    64   �� *
IsEditable+ �� " �� true6�   .0�5�   &   �� $ templateRoot��6C   8   � ��6]   �� 5�   &   $ templateRoot��6D   8   � ��6^   �� 5�   &   $ splitBorder��6C   8   � ��6\   �� 5�   &   $ splitBorder��6D   8   � ��6]   5�   #   P� 5�   "    � {�$ false��6?   . �5�   &   �� $ arrow��6=   8   � ��6P   5�   #   ^� 5�   "    5�   &   �� 5�   *    64   �� *	IsEnabled+ �� $
 Self=�	 false6}   �� 5�   *    64   �� *
IsEditable+ �� " ��	 false6�   .0�5�   &   �� $ templateRoot��6C   8   � ��6]   �� 5�   &   $ templateRoot��6D   8   � ��6^   5�   #   ^� 5�   "    5�   &   �� 5�   *    64   �� *	IsEnabled+ �� $
 Self=�	 false6}   �� 5�   *    64   �� *
IsEditable+ �� " �� true6�   .0�5�   &   �� $ templateRoot��6C   8   � ��6]   �� 5�   &   $ templateRoot��6D   8   � ��6^   �� 5�   &   $ splitBorder��6C   8   � ��6\   �� 5�   &   $ splitBorder��6D   8   � ��6]   5�   #   5�      5�      5�      �� 5�      "	 ��6?   .R�5�      � $ templateRoot��6   $
 true��6-    5�      �� 5�      $��* �6+   �� 5�      #��� r�6+   $��0 �6~   .+�5�      � $ 
PART_Popup��6   $
 true��60   $��2��6J   $��Bottom=�6�   #��� .�6�   ��6^   �� *IsDropDownOpen+ �� $ TemplatedParent=�.��5�        $ shadow��67   $  Transparent��6G   #��z! 6�   ��6[   �� *ActualWidth+$" templateRoot��._�5�      �� $ dropDownBorder��6%   #��� ��6=   #��� ��6�   $��1q�6�   ._�5�   "   �� $
 DropDownScrollViewer��6/   .��5�   &   � $
 grid��6+   $# Enabled=�69   .+�5�   *   �� $$ canvas��61   $
��Left=�6A   $��0��6\   $	��Top=�6g   $��0��6   .+�5�   .   �� $% 
opaqueRect��68   ��6L   �� *
Background+$" dropDownBorder����6�   �� *ActualHeight+$" dropDownBorder����6�   �� *ActualWidth+$" dropDownBorder��5�   +   �� 5�   *   $& ItemsPresenter��69   $' 	Contained=�6Q   # z 6�   5�   '   5�   #   5�      5�      5�      d� 5�      $( toggleButton��6#   #��z��69   #��z��6c   #��z��6�   $��2��6�   8��  ) 6�   �� *IsDropDownOpen+$* TwoWay=� �� $ TemplatedParent=�6?  �� 5�      $ border��6   8�� #��z��6e   ._�5�      �� $+ PART_EditableTextBox��6"   #��z��6@   #��z��6�   8�� #��z��66  , 6�   �� *
IsReadOnly+ �� $ TemplatedParent=�66  5�      5�       5�      P� 5�       � {�$ false��63   . �5�      �� $ border��64    �@J�Opacity$
 0.56Q�6H   5�      P� 5�       �@J�IsKeyboardFocusWithin$
 true��6?   . �5�      ��  � ��
 �   �67   5�      P� 5�      $- 
PART_Popup��67    �@�HasDropShadow$
 true��6O   . �5�      �� $ shadow��63    � ��$ 0,0,5,5q�6G   �� 5�      $ shadow��62    �@ Color$ 	#71000000��6F   5�      P� 5�       �@��HasItems$ false��62   . �5�      �� $ dropDownBorder��63    � ��$ 95��6O   5�      ]� 5�      . 5      �� 5     / �@��
IsGrouping$
 true��6>   �� 5     "/ �@%�IsVirtualizingWhenGrouping$ false��6`   ./�5     ��  � ��$ false��6J   5     P� 5     $- DropDownScrollViewer��6G    � ��$ false��6i   . �5     �� $ 
opaqueRect��67    6O   �� *VerticalOffset+$" DropDownScrollViewer�� �@��Top�� 5     $ 
opaqueRect��68    6P   �� *HorizontalOffset+$" DropDownScrollViewer�� �@��Left5	     5     �� 5     "	 ��67   .R�5     � $ templateRoot��6   $
 true��6-    5     �� 5     $��* �6+   �� 5     #��� r�6+   $��0 �6~   .+�5     � $ 
PART_Popup��6   $
 true��60   $��2��6J   $��1q�6�   $��Bottom=�6�   #��� .�6�   ��6^   �� *IsDropDownOpen+$* TwoWay=� �� $ TemplatedParent=�.��5       $ shadow��67   $  Transparent��6G   #��z! 6�   ��6[   �� *ActualWidth+$" templateRoot��._�5     �� $ dropDownBorder��6%   #��� ��6=   #��� ��6�   $��1q�6�   ._�5  "   �� $
 DropDownScrollViewer��6/   .��5  &   � $
 grid��6+   $# Enabled=�69   .+�5  *   �� $$ canvas��61   $
��Left=�6A   $��0��6\   $	��Top=�6g   $��0��6   .+�5  .   �� $% 
opaqueRect��68   ��6L   �� *
Background+$" dropDownBorder����6�   �� *ActualHeight+$" dropDownBorder����6�   �� *ActualWidth+$" dropDownBorder��5  +   �� 5  *   $& ItemsPresenter��69   $' 	Contained=�6Q   # z 6�   5  '   5  #   5     5     5     d� 5      $( toggleButton��6#   #��z��69   #��z��6c   #��z��6�   $��2��6�   8��  ) 6�   �� *IsDropDownOpen+$* TwoWay=� �� $ TemplatedParent=�6?  �� 5!     $0 contentPresenter��6'   #2 z1 6A   #��z3 6�   #��z4 6�   #��z��6�   #��z��61  $5 false��6t  #��z��6�  # z 6�  #��z��6�  5"      5#     P� 5$     $- 
PART_Popup��67    �@�HasDropShadow$
 true��6O   . �5%     �� $ shadow��63    � ��$ 0,0,5,5q�6G   �� 5&     $ shadow��62    �@ Color$ 	#71000000��6F   5'     P� 5(      �@��HasItems$ false��62   . �5)     �� $ dropDownBorder��63    � ��$ 95��6O   5*     ]� 5+     . 5,     �� 5-     / �@��
IsGrouping$
 true��6>   �� 5.     "/ �@%�IsVirtualizingWhenGrouping$ false��6`   ./�50     ��  � ��$ false��6J   51     P� 52     $- DropDownScrollViewer��6G    � ��$ false��6i   . �53     �� $ 
opaqueRect��67    6O   �� *VerticalOffset+$" DropDownScrollViewer�� �@��Top�� 54     $ 
opaqueRect��68    6P   �� *HorizontalOffset+$" DropDownScrollViewer�� �@��Left55     57     �� 58     " ��6+   .�59     ��  �@�FocusVisualStyle8   65   �� 5:      � ��
 ���� 6/   �� 5<      � ��# � ��6/   �� 5=      � ��$ 0q�64   �� 5>      � ��$
 Auto=�6O   �� 5?      � ��$
 Auto=�6M   �� 5@      � ��$ 6,3,5,3q�6,   �� 5A      � ��$
 true��6B   �� 5B      �@��PanningMode$
 Both=�6=   �� 5C      �@��IsFlicksEnabled$ False��6;   �� 5D      � ��8  6-   6 5E     P� 5F      �@��
IsEditable$
 true��64   . �5G     ��  � ��$ false��66   �� 5H      � ��$ 2q�64   �� 5I      � ��8  65   5J     5L     �� 5M     $ 	#FFFFFFFF��6D   �� 5N     $ #26a134��6@   �� 5O     $ 	#FF212121��6?   �� 5P     $ 	#FFF3F9FF��6G   �� 5Q     $ 	#FF5593FF��6C   �� 5R     $ 	#FF212121��6B   �� 5S     $ 	#FFD9ECFF��6E   �� 5T     $ 	#FF3C77DD��6A   �� 5U     $ #FFC047��6@   �� 5V     $ 	#FFE6E6E6��6F   �� 5W     $ 	#FFBCBCBC��6B   �� 5X     $ 	#FF707070��6A   �� 5Y     " 	�6.   .�5Z     ��  �@�FocusVisualStyle8   65   �� 5[      � ��8  6/   �� 5\      � ��8  60   �� 5]      � ��# � ��6/   �� 5^      � ��$ 1q�64   �� 5_      � �� 5`     �� 5a     "	 	�6*   .R�5b     � $ templateRoot��6#   
������ $
 True��6R    5c  "   �� 5d  &   $
��Auto �67   �� 5e  &   $��* �67   .+�5g  "   �� $ radioButtonBorder��6)   #��z��6D   #��z��6n   #��z��6�   $	7 100��6�   #��z��6�   $��1,1,2,1q�6$  #��z��65  ._�5h  &   � $ markGrid��6+   $��2q�6=   .+�5i  *   A� $8 
optionMark��62   8�� $��6��6w   $��6��6�   $9 0Q�6�   5j  '   5k  #   �� 5l  "   $0 contentPresenter��63   $��1��6M   $|�False��6]   #��z��6o   #��z��6�   $
��True��6�   # z 6�   #��z��6,  5m      5n     P� 5o  "    � ��$
 true��6@   . �5p  &   �� 8   �@�FocusVisualStyle6I   �� 5q  &    � ��$ 4,-1,0,0q�6@   5r  #   P� 5s  "    �@J�IsMouseOver$
 true��6A   . �5t  &   �� $ radioButtonBorder��6C   8   � ��6b   �� 5u  &   $ radioButtonBorder��6D   8   � ��6c   �� 5v  &   $ 
optionMark��6=   8   � ��6U   5w  #   P� 5x  "    � {�$ false��6?   . �5y  &   �� $ radioButtonBorder��6C   8   � ��6b   �� 5z  &   $ radioButtonBorder��6D   8 	  � ��6c   �� 5{  &   $ 
optionMark��6=   8 
  � ��6U   5|  #   P� 5}  "    � ��$
 true��6?   . �5~  &   �� $ radioButtonBorder��6C   8   � ��6b   �� 5  &   $ radioButtonBorder��6D   8   � ��6c   �� 5�  &   $ 
optionMark��6=   8   � ��6U   5�  #   P� 5�  "    �@d�	IsChecked$
 trueY�6?   . �5�  &   �� $ 
optionMark��6@    �@J�Opacity$ 1Q�6X   5�  #   P� 5�  "    6?   Z�  �@d�	IsChecked. �5�  &   �� $ 
optionMark��6@    �@J�Opacity$
 0.56Q�6X   5�  #   5�     5�     5�     �� 5�     " ��6+   .�5�     ��  �@�FocusVisualStyle 65   Z� �� 5�      � ��8   6/   �� 5�      � �� �#dae2ea60   �� 5�      � ��# � ��6/   �� 5�      � ��$ 1q�64   �� 5�      � �� 5�     �� 5�     "	 ��6*   .R�5�     � $ templateRoot��6#   
������ $
 True��6R    5�  "   �� 5�  &   $
��Auto �67   �� 5�  &   $��* �67   .+�5�  "   �� $ checkBoxBorder��6)   $7 3��6A   $: 1q�6R   #��z��6^   #��z��6�   #��z��6�   #��z��6�   $��1q�6+  #��z��66  ._�5�  &   � $ markGrid��6+   .+�5�  *   F� $ 
optionMark��6/   Y�����4� �� Ѽ�G dԊ Ѩ�D dԊ �    ^>O ��z r�5 ��@ ��\ 
ܺ��� @�j�  �>��4� �� 8�� $��1q�6  $9 0Q�6  $
; None=�6  �� 5�  *   $% indeterminateMark��64   8�� $��2q�6   $9 0Q�6�   5�  '   5�  #   �� 5�  "   $0 contentPresenter��63   $��1��6M   $|�False��6]   #��z��6o   #��z��6�   $
��True��6�   # z 6�   #��z��6,  5�      5�     P� 5�  "    � ��$
 true��6@   . �5�  &   ��  6I   Z�  �@�FocusVisualStyle�� 5�  &    � ��$ 4,-1,0,0q�6@   5�  #   P� 5�  "    �@J�IsMouseOver$
 true��6A   . �5�  &   �� $ checkBoxBorder��6C   8   � ��6_   �� 5�  &   $ checkBoxBorder��6D   8   � ��6`   �� 5�  &   $ 
optionMark��6=   8   � ��6U   �� 5�  &   $ indeterminateMark��6=   8   � ��6\   5�  #   P� 5�  "    � {�$ false��6?   . �5�  &   �� $ checkBoxBorder��6C   8   � ��6_   �� 5�  &   $ checkBoxBorder��6D   8   � ��6`   �� 5�  &   $ 
optionMark��6=   8 	  � ��6U   �� 5�  &   $ indeterminateMark��6=   8 
  � ��6\   5�  #   P� 5�  "    � ��$
 true��6?   . �5�  &   �� $ checkBoxBorder��6C   8   � ��6_   �� 5�  &   $ checkBoxBorder��6D   8   � ��6`   �� 5�  &   $ 
optionMark��6=   8   � ��6U   �� 5�  &   $ indeterminateMark��6=   8   � ��6\   5�  #   P� 5�  "    �@d�	IsChecked$
 trueY�6?   . �5�  &   �� $ 
optionMark��6@    �@J�Opacity$ 1Q�6X   �� 5�  &   $ indeterminateMark��6@    �@J�Opacity$ 0Q�6_   5�  #   P� 5�  "    6?   Z�  �@d�	IsChecked. �5�  &   �� $ 
optionMark��6@    �@J�Opacity$ 0Q�6X   �� 5�  &   $ indeterminateMark��6@    �@J�Opacity$ 1Q�6_   5�  #   5�     5�     5�     �� 5�     " n�65   .�5�     ��  � ��$ 8��6*   �� 5�      � ��
 ���� 6/   �� 5�      �@�Cursor$ SizeWE��6+   �� 5�      � �� 5�     �� 5�     "	 n�6*   .R�5�     �� #��z��6%   #: z��6O   5�     5�     5�     �� 5�     " ��6�   .�5�     ��  � �� 5�     �� 5�     "	 ��6*   .R�5�     � .+�5�  "   �� $% Border��6,   #��� ��6<   $
 True��6}   � 5�  "   $> Arrow��6*   
���   �$��Right=�6F   $��8,8,3,3q�6b   $
9 0.15Q�6s   ? �   ��� ��� ��� ��� $; Uniform=�6�   $��Bottom=�6�   5�      5�     P� 5�  "    �@J�IsMouseOver$
 True��6A   . �5�  &   �� $ Border��6?   # � ��6S    � ��5�  #   P� 5�  "    � ��$
 True��6?   . �5�  &   �� $ Border��6=   # � ��6Q    � ��5�  #   P� 5�  "    � {�$ False��6?   . �5�  &   �� $ Arrow��6C    � y�$ 	Collapsed=�6V   5�  #   5�     5�     5�     �� 5�     "  6+   .�5�     ��  � ��
 ���� 6/   �� 5�      � �� �#2225286/   �� 5�      � ��$ 0q�64   �� 5�       �@ RowDetailsVisibilityMode$ VisibleWhenSelected=�6=   �� 5�      � ��$
 true��6B   �� 5�      �@��PanningMode$
 Both=�6=   �� 5�      �@��IsFlicksEnabled$ False��6;   �� 5�      �@ AutoGenerateColumns$ False��68   �� 5�      �@ HeadersVisibility$ Column=�66   �� 5�      � ��$ 0 10 0 0q�6+   �� 5�      �@ SelectionMode$ Single=�62   �� 5�      �@ SelectionUnit$ FullRow=�62   �� 5�      �@ CanUserAddRows$ False��63   �� 5�      �@ CanUserDeleteRows$ False��66   �� 5�      �@ CanUserResizeRows$ False��66   �� 5�      �@ CanUserReorderColumns$ False��6:   �� 5�      � ��$ 13(�6-   �� 5�      �@ ColumnWidth$ * 60   �� 5       �@ GridLinesVisibility$
 None=�68   �� 5      � �� 5     �� 5     "	  6*   .R�5     �� #��z��6%   #��z��6O   #��z��6{   #: z��6�   $
 True��6�   ._�5  "   �� $
 DG_ScrollViewer��6/   $|�false��6H   ��5  &   �� 5	  *   "	 ��6:   .R�5
  .   �  5  2   �� 5  6   $
��Auto �6G   �� 5  6   $��* �6G   �� 5  6   $
��Auto �6G   @ 5  2   �� 5  6   $
��Auto �6D   �� 5  6   $��* �6D   �� 5  6   $
��Auto �6D   .+�5  2   �� #��ZA 69   $|�false��6h   ��6z   C� *�� $"< DataGridSelectAllButtonStyle��"=  +y�6�   �� *HeadersVisibility+#C ZB #E ZD  �� "  ��6�  �� *CellsPanelHorizontalOffset+ �� "    5  2   $!F PART_ColumnHeadersPresenter��6Q   $��1��6v   y�6�   �� *HeadersVisibility+#C ZG #E ZD  �� "  �� 5  2   $!H PART_ScrollContentPresenter��6I   #I z��6n   $��2��6�   $��1��6�   �� 5  2   $J PART_VerticalScrollBar��6<   $��2��6\   #L zK 6l   $M Vertical=�6�   $��1��6�   #O zN 6!  #y�zP 6Q  Q 6�   �� *VerticalOffset+$* OneWay=� �� $ TemplatedParent=�6Q  � 5  2   $��1��67   $��2��6G    5  6   �� 5  :   ��6K   �� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� 5  :   $��* �6K   .+�5  6   �� $J PART_HorizontalScrollBar��6@   $��1��6b   #L zR 6r   $M 
Horizontal=�6�   #O zS 6  #y�zT 6L  Q 6�   �� *HorizontalOffset+$* OneWay=� �� $ TemplatedParent=�6L  5  3   5   /   5!  +   .��5#  &   �� # z 65   5$  #   5%     5&     5(     6 5)     ]� 5*     . 5+     �� 5,     / �@��
IsGrouping$
 true��6>   �� 5-     "/ �@%�IsVirtualizingWhenGrouping$ false��6`   ./�5/     ��  � ��$ false��6J   50     52     �� 53     "  6/   .�54     ��  � ��
 ���� 6/   �� 55      � ��$ Center=�66   �� 56      �@�FocusVisualStyle 65   Z� �� 57      � ��$
 15 0q�6+   �� 58      � �� 59     �� 5:     "	  6*   .R�5;     �� #��z��6%   $��0q�6O   $
 True��6c   ._�5<  "   �� # z 63   5=     5>     5@     5B     �� 5C     "  67   .�5D     ��  � ��$ Center=�6=   �� 5E      � ��
 ���� 6/   �� 5F      � �� �#69717d6/   �� 5G      � ��$ 	15 0 15 0q�6+   �� 5H      � ��$
 Bold"�6/   �� 5I      � �� 5J     �� 5K     "	  6*   .R�5L     � .+�5M  "   	  #��z��6=   #��z��6g   #��z��6�   #U z��6�   #W zV 6�   #Y zX 6  #: z��6E  #[ zZ 6i  #] z\ 6�  #_ z^ 6�  ._�5N  &   �� #��z��67   $
��True��6z   # z 6�   #��z��6�   5O  #   n� 5P  "   $` PART_LeftHeaderGripper��6(   $
��Left=�6H   8��  6c   n� 5Q  "   $` PART_RightHeaderGripper��6(   $��Right=�6I   8�� 6e   5R     5S     5U     5V     �� 5W     " 
 6.   .�5X     ��  � ��
 �����6/   �� 5Y      � ��$ 0 4 0 0q�6+   �� 5Z      �@J�SnapsToDevicePixels$
 true��68   �� 5[      �@=�ErrorTemplate 6=   Z� �� 5\      �@
 ValidationErrorTemplate 5]     �� 5^     .R�5_     �� 
���  ��$��2,0,0,0q�69   $��!��6J   $��Center=�6S   5`     5b     �� 5c      � �� 5d     �� 5e     "	 
 6*   .R�5f     �� $ 
DGR_Border��6%   $	: 0 8q�69   #��z��6G   $��0q�6q   $7 5��6�   $
 True��6�   ._�5g  "      5h  &   �� 5i  *   $
��Auto �6;   �� 5j  *   $��* �6;   @ 5l  &   �� 5m  *   $��* �68   �� 5n  *   $
��Auto �68   .+�5p  &     $��1��6=   #��za 6M   # z 6w     5q  &   $��1��6?   $��1��6O   #y�zb 6s  c 6\   �� *AreRowDetailsFrozen+#C Zd #E Ze  �� "  6s    5r  &   $��2��68   $c Vertical=�6I   y�6�   �� *HeadersVisibility+#C Zf #E ZD  �� "  5s  #   5t     5u     5w     6 5x     P� 5y      �@J�IsMouseOver$
 True��65   . �5z     ��  � ��8   67   �� 5{      � ��8  67   5|     P� 5~      �@
 
IsSelected$
 True��64   . �5     ��  � ��8  67   �� 5�      � ��8  67   5�     ]� 5�     . 5�     �� 5�     / �@
 
IsSelected$
 True��6>   �� 5�     / �@��IsSelectionActive$ False��6N   ./�5�     ��  � �� �#dfdfdf67   5�     5�     5�     5�     