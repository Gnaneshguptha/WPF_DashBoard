   M S B A M L   `   `   `  ����D  @LoginForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LoginForm.ViewLoginForm.View  5      9!clr-namespace:LoginForm.ViewModelLoginForm.ViewModel  5	      $    LoginForm.View.UserDetailsView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:LoginForm.View     5      7	viewModel!clr-namespace:LoginForm.ViewModel     5	        � DataContext  5      .  (LoginForm.ViewModel.UserDetailsViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $��* �6   .+�5   
   �� ���#200F53$��0��6&    �� CornerRadius$ 10��63   ._�5      �� $��USER DETAILS��6   
�������$��Center=�6?   $��Center=�6Z   $��27(�5      $��SemiBold"�5      5      �� 5   
   ���#30128a$��1��6&   $ 23��63   ._�5      �  5      �� 5      $	��150 �6$   �� 5      $��* �6$   .+�5      �� $Y��Shttps://www.pngkey.com/png/full/115-1150420_avatar-png-pic-male-avatar-icon-png.png��6   $��0��6u   $��0,30,0,0q�6�   �� 5       $��1��6    �� Orientation$ Vertical=�5!      $��center=�5"      .+�5#      �  � Orientation$ 
Horizontal=�6    $��	90,30,0,0q�69   .+�5$      �� $��Emp Id       :  ��6$   $��16(�5%   $   $��DemiBold"�5&   $   
�������5'   $   �� 5(      $��16(�6D   $��DemiBold"�5)   $   
���������5(   $   �� *Userdetails.Id+5*   $   5+      � 5,      $ 
Horizontal=�6    $��	90,10,0,0q�69   .+�5-      �� $��User name :   ��6$   $��16(�5.   $   $��DemiBold"�5/   $   
�������50   $   �� 51      $��16(�6J   $��DemiBold"�52   $   
���������51   $   �� *Userdetails.UserName+53   $   54      � 55      $ 
Horizontal=�6    $��	90,10,0,0q�69   .+�56      �� $��First name :   ��6$   $��16(�57   $   $��DemiBold"�58   $   
�������59   $   �� 5:      $��16(�6K   $��DemiBold"�5;   $   
���������5:   $   �� *Userdetails.FirstName+5<   $   5=      � 5>      $ 
Horizontal=�6    $��	90,10,0,0q�69   .+�5?      �� $��Last name :   ��6$   $��16(�5@   $   $��DemiBold"�5A   $   
�������5B   $   �� 5C      $��16(�6J   $��DemiBold"�5D   $   
���������5C   $   �� *Userdetails.LastName+5E   $   5F      � 5G      $ 
Horizontal=�6    $��	90,10,0,0q�69   .+�5H      �� $��Email         :   ��6$   $��16(�5I   $   $��DemiBold"�5J   $   
�������5K   $   �� 5L      $��16(�6G   $��DemiBold"�5M   $   
���������5L   $   �� *Userdetails.Email+5N   $   5O      �� 5P         Dashboardbutton#��[  6   $��
Dash Board��5Q      $��0,30,0,0q�5R   !   $	��100��5S      5T      5U      5V      5W      5X      