   M S B A M L   `   `   `  ����D  @LoginForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LoginForm.ViewLoginForm.View  5   	   9!clr-namespace:LoginForm.ViewModelLoginForm.ViewModel  5	   	       LoginForm.View.mainView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:LoginForm.View     5   	   7	viewModel!clr-namespace:LoginForm.ViewModel     5	   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5
   	   -   5          � Title$  mainView��5   	   $	��650��6   $	��900��6'    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      '  !LoginForm.ViewModel.MainViewModel  5   
    � 	Resources 5       �� DataType'   !LoginForm.ViewModel.HomeViewModel   LoginForm.View.HomeView+   %LoginForm.ViewModel.CustomerViewModel!   LoginForm.View.CustomerView.  (LoginForm.ViewModel.UserDetailsViewModel$   LoginForm.View.UserDetailsView)  #LoginForm.ViewModel.UpdateViewModel&	    LoginForm.View.UpdateDetailsView��%,  (��       5      *, +)(�� 2     5      *, +)(�� d     5      *, +)(�� �     5#      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5         5!      �� 5#   
   "  6   .R�5$      	  5%      5&      .��5(      ��  �� CornerRadius$ 22��6   $��1q�5)      ��5+   
   �� 5,       �� 
StartPoint$	 0,0&�6"   	 �� EndPoint$		 1,1&�63   .��5-      �    winBorderColor1
 � Color#
 [  6   � 5.        winBorderColor2#
 [ 6   � 5/        winBorderColor3#
 [ 6   50      ._�53   
   �  � ColumnDefinitions 55      �� 56      $	��250 �6#   �� 57      $��* �6#   .+�5;      �� $ 	20,0,0,20��6   $��0��5<      ��5=      �� 5>      $	 0,0&�6*   $	 1,0.7&�6;   .��5?      �   secondaryBackColor1#
 [ 6'    � Offset$ 0Q�6T   � 5@        secondaryBackColor2#
 [ 6'   $ 2Q�6T   5A      ._�5D      �� .+�5F      ��  �� Orientation$ 
Horizontal=�6!   $��35��5G   !   $��
15,25,0,40q�5H   !   .+�5I      �� $P��JE:\DotnetProjects\LoginForm\Gallery\—Pngtree—tree logo png_6595324.png��6    $��41��6p   �� 5J      $��NEXGILE��6$   
��� ���$��25(�5L   $   $��
Montserrat)�5M   $   $��Medium"�5N   $   $��Center=�5O   $   $��10,0,0,0q�5P   $   5Q      	� 5S        
menuButton#��[ 6"    
 color1
 � Tag# [ 5T   "    d� 	IsChecked$
 TrueY�5V   "   ��5U   "   �� *ShowHomeViewCommand+.��5X      �� $ 
Horizontal=�6%   .+�5Y      !
  FontAwesome.Sharp.IconImage
  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$
 Home=�6+     menuButtonIcon#��[ 67   �� 5Z      $��	Dashboard��6(     menuButtonText#��[ 5[   (   5\      5]      	� 5_      #��[ 6"    
	 color2# [	 5`   "   ��5a   "   �� *ShowCustomerViewCommand+.��5c      �� $ 
Horizontal=�6%   .+�5d      
  $ 	UserGroup=�6+   #��[ 6<   �� 5e      $��Customer��6(   #��[ 69   5f      5g      	� 5i      #��[ 6"    

 color3# [
 5j   "   .��5l      �� $ 
Horizontal=�6%   .+�5m      
  $ Truck=�6+   #��[ 68   �� 5n      $��Order��6(   #��[ 66   5o      5p      	� 5q      #��[ 6"    
 color4# [ 5r   "   .��5t      �� $ 
Horizontal=�6%   .+�5u      
  $ ShoppingBag=�6+   #��[ 6>   �� 5v      $��Transaction��6(   #��[ 6<   5w      5x      	� 5y      #��[ 6"    
 color5# [ 5z   "   .��5|      �� $ 
Horizontal=�6%   .+�5}      
  $	 Box=�6+   #��[ 66   �� 5~      $��Stock��6(   #��[ 66   5      5�      	� 5�      #��[ 6"    
 color6# [ 5�   "   .��5�      �� $ 
Horizontal=�6%   .+�5�      
  $ Wallet=�6+   #��[ 69   �� 5�      $��	Financial��6(   #��[ 6:   5�      5�      	� 5�      #��[ 6"    
 color7# [ 5�   "   .��5�      �� $ 
Horizontal=�6%   .+�5�      
  $ PieChart=�6+   #��[ 6;   �� 5�      $��Report��6(   #��[ 67   5�      5�      	� 5�      #��[ 6"    
 color8# [ 5�   "   .��5�      �� $ 
Horizontal=�6%   .+�5�      
  $ Tools=�6+   #��[ 68   �� 5�      $��Settings��6(   #��[ 69   5�      5�      5�      5�      �� 5�      $ 	0,20,20,0��6   $��1��5�      ��5�      �� 5�      $	 1,1&�6*   $		 0,0&�6;   .��5�      �   primaryBackColor1#
 [ 6'   $ 0Q�6R   � 5�        primaryBackColor2#
 [ 6'   $ 2Q�6R   5�      ._�5�      �  � RowDefinitions 5�      �� 5�      $��35 �6(   �� 5�      $��65 �6(   �� 5�      $��* �6(   .+�5�      �� -   5         ��Name$ pnlControlBar��5�      $��0��5�   !   $ 
Horizontal=�5�      $��RightToLeft=�5�      
������ $��0,0,5,0q�5�      .+�5�      �� -   5         ��Name$ btnClose��5�        controlButton#��[ 5�      # [ 5�      .��5�      
  $ Xmark=�6+   $��15��68   $��15��6C     controlButtonIcon#��[ 6O   5�      �� 5�      -   5        $ btnMaximize��5�      #��[ 5�      # [ 5�      .��5�      
  $ WindowMaximize=�6+   $��15��6B   $��15��6M   #��[ 6Y   5�      �� 5�      -   5        $ btnMinimize��5�      #��[ 5�      # [ 5�      .��5�      
  $ WindowMinimize=�6+   $��15��6B   $��15��6M   #��[ 6Z   5�      5�      � 5�      $��1��6    5�      �� 5�      �� 5�      .+�5�      �� $��0��6%   $ 
Horizontal=�5�   %   $��Center=�5�   %   .+�5�      
  $��20��5�   +   $��20��5�   +     titleColor2   
Foreground# [ 5�   +   $��	35,0,10,0q�5�   +    5�   +   �� *Icon+5�   +   �� 5�      #��[ 6A   $��16(�5�   (   $��Center=�5�   (   $��Medium"�5�   (   ��5�   (   �� *	Caption+5�   (   5�      �� 5�      $��1��6%   $ 
Horizontal=�5�   %   $��RightToLeft=�5�   %   $��Center=�5�   %   $��0,0,10,0q�5�   %   .+�5�      �� -   5          
iconButton#��[ 5�   %   # [ 5�   %   .��5�   "   
  $ 	AngleDown=�6/     iconButtonIcon#��[ 6@   5�      � 5�      -   5         �Name$ DropdownPopup��5�   $    � VerticalOffset$ 20��6;    � AllowsTransparency$
 true��6O    � 	StaysOpen$ False��6j   .��5�   "   �� $ 14��6*   
������ ._�5�   "   �  � Orientation$ Vertical=�6,   .+�5�   *   ��   	DropButon#��[ 61   $��Show detials��5�   -   
�������$��15(�5  -   $	��130��5  -   ��5   -   �� *ShowUserDetailsCommand+5  -   �� 5  *   $��Update details��61   
�������$��15(�5  -   $	��130��5	  -   #��[ 5
  -   ��5  .   �� *ShowUpdateDetailsCommand+�� 5  *   -   5        $��Logout��5  1   
�������$��15(�5  -   $	��130��5  -   #��[ 5  -   5  '   5  #   5     �� 5     #��[ 5  (   $��16(�5  (   $��center=�5  (   ��5  (   �� *CurretUserAccount.FirstName+5  (   A� 5      $��35��6&   $��35��62   #��[	 6=   $��2��5!  &   $��	10,0,10,0q�5"  &   ��5#  "   �� 5$  &    �� ImageSource$@ :E:\DotnetProjects\LoginForm\Gallery\icon-4399701_1280.webp��61   5&     �� 5(     #��[ 6%   # [
 5)  %   .��5*  "   
  $ Clock=�6/   #��[ 6<   5+     �� 5-     #��[ 6%   # [ 5.  %   .��5/  "   
  $ Envelope=�6/   #��[ 6?   50     �� 52     #��[ 6%   # [ 53  %   .��54  "   
  $
 Bell=�6/   #��[ 6;   55     56     57     �� 5<     $��2��5>     $��25q�5?     ��5=     �� *CurrentViewModel+5B     5C     5D     5G     5H     5I     