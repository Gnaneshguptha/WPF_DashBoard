   M S B A M L   `   `   `  ����D  @LoginForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LoginForm.ViewLoginForm.View  5   	   9!clr-namespace:LoginForm.ViewModelLoginForm.ViewModel  5   	   G(clr-namespace:LoginForm.CustomControllesLoginForm.CustomControlles  5   	       LoginForm.View.LoginView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:LoginForm.View     5   	   7	viewModel!clr-namespace:LoginForm.ViewModel     5   	   Ecustomcontrolles(clr-namespace:LoginForm.CustomControlles     5   	   -   5          � Title$  	LoginView��5   	   $	��550��6   $	��800��6(    � WindowStyle$
 None=�5	   	    � 
ResizeMode$ NoResize=�5
   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      (   "LoginForm.ViewModel.LoginViewModel  5   
    � 	Resources 5         BooleanToVisbility��%   &	        �� 5   
   6'   5      y�5      �� 5   
    �� Path$ IsViewVisible�6    �� Mode$ TwoWay=�6'   	 �� 	Converter#	 [  65   .��5      �� 
 �� CornerRadius$
 12��6   ��5   
   �� 5       �� ImageSource$J DE:\DotnetProjects\LoginForm\Gallery\windows-C6T6vr1sQI0-unsplash.jpg��6    j� Stretch$ UniformToFill=�5       ._�5"      �� $
 12��6   $��1q�5#       J� Opacity$
 0.95Q�5$      ��5&   
   �� 5'       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5(      �   winBorderColor1 � Color# [ 6   � 5)        winBorderColor2# [ 6   � 5*        winBorderColor3# [ 6   5+      ��5-      �� 5.      $	 1,0&�6&   $	 1,0&�67   .��5/      � $ #060531��6#    � Offset$ 0Q�63   � 50      $ #1B1448��6#   $
 0.75Q�63   � 51      52      ._�54      �  � RowDefinitions 55      �� 56      $��30 �6$   �� 57      .+�59      �  � ColumnDefinitions 5:      �� 5;      �� 5<      $��25 �6+   �� 5=      $��25 �6+   �� 5>      $��5 �6+   .+�5@      �� $��LOG IN��6    
����� �$��16(�5B       $��
Montserrat)�5C       $��0��5D       $��Center=�5E       $��10,0,0,0q�5F       �� 5G      -   5         ��Name$ miniMizeButton��5H      $��0q�5I      $��-��5J      
�������$��16(�5L      $��1��5M       � Cursor$
 Hand��5N      ��5P      �� 5Q       �� 
TargetType" ��6$   .�5R   "   ��  �� Property � �� �� Value
 � ���6?    �� Triggers 5S   "   P� 5T   &    P� Property �@J�IsMouseOver P� Value$
 true��6E   . �5U   *   ��  � ��
 � ���6G   5V   '   5X      ��5Z      �� 5[       �� 
TargetType" ��6.   .R�5\   "   �� $��20��6)   $��20��64   $
 9��6@   #��z��5]   )   ._�5^   &   �� $��Center=�67   $��Center=�6R   5_   #   5`      5b      �� 5c      -   5        $ 	clsButton��5d      $��0q�5e      $��x��5f      
�������$��16(�5h      $��2��5i      $
 Hand��5j      ��5l      �� 5m      " ��6$   .�5n   "   ��  � ��
 �  ��6?    5o   "   P� 5p   &    �@J�IsMouseOver$
 true��6E   . �5q   *   ��  � ��
 �  ��6G   5r   '   5t      ��5v      �� 5w      " ��6.   .R�5x   "   �� $��20��6)   $��20��64   $
 9��6@   #��z��5y   )   ._�5z   &   �� $	��Top=�67   $��Center=�6O   5{   #   5|      5~      5      �� 5�      $	��250��6   $��2��5�       �� Orientation$ Vertical=�5�      $��0,35,0,0q�5�      .+�5�      �� $P��JE:\DotnetProjects\LoginForm\Gallery\—Pngtree—tree logo png_6595324.png��6   $	��100��5�      $	��100��5�      �� 5�      $��NEXGILE��6    
��� E��$��25(�5�       $��Medium"�5�       $��
Montserrat)�5�       $��Center=�5�       �� 5�      $*��$Reinvent  your  VISION  with Nexgile��6    
�������$��16(�5�       $��Medium"�5�       $��
Montserrat)�5�       $
��Wrap=�5�        �� TextAlignment$ Center=�5�       $��0,5,0,0q�5�       �� 5�      $��Username��6    
�������$��12(�5�       $��
Montserrat)�5�       $��0,35,0,0q�5�       �� 5�      -   5         ��Name$ txtUser��5�      $��Medium"�5�      $��13(�5�      $��
Montserrat)�5�      
�������  �� 
CaretBrush
  �����
�������$��0,0,0,2q�5�      $��28��5�      $��Center=�5�      $��0,5,0,0q�5�      $��30,0,0,0q�5�      ��5�      �� *
UserName+! �� UpdateSourceTrigger$! PropertyChanged=�.��5�   1   ��5�      �� 5�      $= 7https://cdn-icons-png.flaticon.com/512/3135/3135768.png��6)   $ Uniform=�6o   " j� 
AlignmentX$
" Left=�6�   .��5�   .   5�      �� 5�      $��Password��6    
�������$��12(�5�       $��
Montserrat)�5�       $��0,35,0,0q�5�       4   .LoginForm.CustomControlles.BindablePasswordBox  5�      $��28��5�      $��0,5,0,0q�5�      #   Password# 5�      �� *
Password+$ TwoWay=�$! PropertyChanged=�5�      �� 5�      $��12(�5�       $��
Montserrat)�5�       $��0,10,0,0q�5�       $
��Wrap=�5�       ��5�       �� *ErrorMessage+��5�       �� *ErrorMessageColor+5�       �� 5�      -   5        $ LoginButton��5�      $��0q�5�      $��Login��5�      
�������$��16(�5�      $
 Hand��5�      $��0,30,0,0q�5�      ��5�      �� *LoginCommand+��5�      �� $ �� RelativeSource$ �� % �� AncestorType"% ���5�      �� 5�      " ��6$   .�5�   "   ��  � ��
 �<��6?    5�   "   P� 5�   &    �@J�IsMouseOver$
 true��6E   . �5�   *   ��  � ��
 �  ��6G   5�   '   5�      ��5�      �� 5�      " ��6.   .R�5�   "   �� $	��120��6)   $��30��65   $
 15��6A   #��z��5�   )   ._�5�   &   �� $��center=�67   $��Center=�6R   5�   #   5�      5�      �� 5�      $ 
Horizontal=�6!   $��Center=�5�   !   $��0,20,0,0q�5�   !   .+�5�      �� $��Forgot Password?��6$   
�������5�   $   �� 5�      $��Reset��6$   
�������$ Arrow��5�   $   $��10,0,0,0q�5�   $   5�      5�      5�      5�      5�      5�      