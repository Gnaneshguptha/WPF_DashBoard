   M S B A M L   `   `   `  ����D  @LoginForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LoginForm.ViewLoginForm.View  5      9!clr-namespace:LoginForm.ViewModelLoginForm.ViewModel  5
      !    LoginForm.View.CustomerView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:LoginForm.View     5      X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      1	viewModel!clr-namespace:LoginForm.ViewModel  5
        � DataContext  5   
   +   %LoginForm.ViewModel.CustomerViewModel  5      .��5   
   � .+�5      �  � RowDefinitions 5      �� 5      $��50 �6$   �� 5      .+�5      � $��0��6    � ColumnDefinitions 5      �� 5      $��* �6+   �� 5      $	��120 �6+   �� 5      $	��120 �6'   .+�5      ��  �� Orientation$ 
Horizontal=�6!   $	��Top=�5      $��0��5      .+�5      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ Search=�6'   $��20��65   $��20��6A      plainTextColor3   
Foreground# [  6L   �� 5      $��13(�5    !   $��24��5!   !   $	��300��5"   "   
������ $��Medium"�5$   "   $��
Montserrat)�5%   "   #��[  5&   "    �� 
CaretBrush# [  5'   "   #��[  5(   "   $��0,0,0,1q�5)   "   $��Center=�5*   "   $��5,5,0,0q�5+   "   ��5   "   �� *Fname+5+   5   5,      �� 5.      $��1��6   $��Search��50   !   $��12(�51   !   $��
Montserrat)�52   !    � Cursor$
 Hand��53   !   $��0q�54   !   
�������$��Center=�56      ��5/   !   �� *SearchByNameCommand+��57      �� 58       �� 
TargetType" ��6$   .�59   "   �� 	 �� Property	 � ��
 �� Value
 �#773DFF6?   �� 5:   "   	 � ��
 5;   &   �� 5<   *    �� 
TargetType" ��6:   .R�5=   .   �� $��30��65    �� CornerRadius$ 15��5>   5   #��z��5?   5   ._�5@   2   �� $��Center=�6C   $��Center=�5A   K   5B   /   5C   +   5E   #    �� Triggers 5F   "   P� 5G   &    P� Property �@J�IsMouseOver P� Value$
 True��6E   . �5H   *   �� 	 � ��
 �#836EFB6G   5I   '   5K      5M      �� 5O      $��2��6   $��Center=�5P      $��Clear Search��5Q      $��12(�5S      $��
Montserrat)�5T      $
 Hand��5U      $��0q�5V      
���������5R      �� *
ClrCommand+��5Y      �� 5Z      " ��6    .�5[      �� 	 � ��

 �����6;   �� 5]      	 � ��
 5^   "   �� 5_   &   " ��66   .R�5`   *   �� $��30��61   $ 15��5a   1   #��z��5b   1   ._�5c   .   �� $��Center=�6?   $��Center=�5d   ?   5e   +   5f   '   5h      5i      5k      5m      �� 5n      $��1��6   ���#200F53$ 10��5p       �� Padding$ 14q�5q      ._�5r      &   System.Windows.Controls.DataGrid     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 5s         AutoGenerateColumns$ False��5t      ���#200F53$��0q�5v      ��5r      �� *	Customers+   ColumnHeaderStyle 5w      �� 5x      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    .�5z      �� 	 � ��

 ���� 6;   �� 5{      	 � ��
 �#BCBEE06;   �� 5|      	 � ��$
 0,0,0,10q�68   �� 5}      	 � ��$
 
Montserrat)�6;   �� 5~      	 � ��$
 18(�69   5         RowStyle 5�      �� 5�      )  #System.Windows.Controls.DataGridRow"  6    .�5�      �� 	 � ��
 �#5b38c76;   �� 5�      	 � ��
 �#d6d1e66;   �� 5�      	 � ��$
 14(�69   5�         Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,	  &System.Windows.Controls.DataGridColumn 	  Header$ ID��6D   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 6-   �� *Id+6D     5�      $ 
First name��6K    6-   �� *	FirstName+6K     5�      $ 	Last name��6J    6-   �� *
LastName+6J     5�      $ Phone no��6M    6-   �� *PhoneNumber+6M     5�      $	 age��6E    6-   �� *Age+6E     5�      $ Adress��6I    6-   �� *	Address+6I   5�      5�      5�      5�      5�      