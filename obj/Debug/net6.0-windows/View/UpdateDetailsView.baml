   M S B A M L   `   `   `  ����D  @LoginForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LoginForm.ViewLoginForm.View  5      9!clr-namespace:LoginForm.ViewModelLoginForm.ViewModel  5	      &     LoginForm.View.UpdateDetailsView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:LoginForm.View     5      7	viewModel!clr-namespace:LoginForm.ViewModel     5	        � DataContext  5      )  #LoginForm.ViewModel.UpdateViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $	��100 �6   �� 5      $��* �6   .+�5   
   �� ���#1f0c5e �� CornerRadius$ 21��5      ._�5      �� $��Update Details��6   $��Center=�6.   $��Center=�5      $��40(�5      $��DemiBold"�5      
�������5      5      �� 5   
   $��1��6   ���#2b1182$ 21��5!      ._�5#      ��  �� Orientation$ Vertical=�6   $��Center=�60   $��0,40,0,0q�6M   .+�5$      �� $ 18��6    �� Padding$ 10q�6+   ���#6339ed$��1q�6M    J� Effect 5%      3  -System.Windows.Media.Effects.DropShadowEffect  5&         ShadowDepth$ 30Q�6+      	Direction$	 225Q�6<      Color$ Black��6L   	   Opacity$		 0.5Q�6Z   ._�5(      �� $��10q�6!   .+�5*      � 
 � Orientation$
 
Horizontal=�6$   $��0,20,0,0q�6=   .+�5+      �� $��First name     ��6(   $��18(�6?   
�������6M   �� 5,      $	��190��6&   $��0,0,0,1q�62   
�������
������ 
�������$��18(�50   &   ��5.   &   �� *UserDetail.FirstName+ �� Mode$ TwoWay=�50   &   51      � 54      $
 
Horizontal=�6$   $��0,20,0,0q�6=   .+�55      �� $��Last name     ��6(   $��18(�6>   
�������6L   �� 56      $	��190��6&   $��0,0,0,1q�62   
�������
������ 
�������$��18(�59   &   ��57   &   �� *UserDetail.LastName+$ TwoWay=�59   &   5:      � 5=      $
 
Horizontal=�6$   $��0,20,0,0q�6=   .+�5>      �� $��User name    ��6(   $��18(�6=   
�������6K   �� 5?      $	��190��6&   $��0,0,0,1q�62   
�������
������ 
�������$��18(�5B   &   ��5@   &   �� *UserDetail.UserName+$ TwoWay=�5B   &   5C      � 5F      $
 
Horizontal=�6$   $��0,20,0,0q�6=   .+�5G      �� $��Email            ��6(   $��18(�6A   
�������6O   �� 5H      $	��190��6&   $��0,0,0,1q�62   
�������
������ 
�������$��18(�5K   &   ��5I   &   �� *UserDetail.Email+$ TwoWay=�5K   &   5L      �� 5M      $��0,30,0,0q�6!   $	��130��5N   !      Dashboardbutton#��[  6-   
�������$��18(�5P   !    � Cursor$ Arrow��5Q   !   ��5R   !   �� *UpdateCommand+.��6C   Update6K   5S      5T      5U      5V      5W      5X      