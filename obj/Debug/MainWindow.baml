   M S B A M L   `   `   `  ����R  NTasks Management System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:Tasks_Management_SystemTasks_Management_System  5   	   (    "Tasks_Management_System.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:Tasks_Management_System     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	         FocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 ButtonStyle1 �� 
TargetType �� 
TargetType	 ��Name
 �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName��%J  &	        &	 �     &	 �     &	 �     &	     &	 6    &	 Y    &	 |    &	 �    &		 �    &	
 �    7   7  7  7  7  7  7  7  7  7 	 �� 5
   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $	 1 2R�6/   #��� ��6E    . $��1��6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6%   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5        � ��# � ��6+   �� 5!       � ��$ 1q�60   �� 5"       � ��$ Center=�6;   �� 5#       � ��$ Center=�69   �� 5$       � ��$ 1q�6(   �� 5%       � �� 5&      �� 5'      " ��6&   .R�5(      �� $	 border��6!   $
 20��61   #��z��6C   #��z��6m   #��z��6�    . ._�5)      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5*       5+      P� 5,       �@��IsDefaulted . . �5-   "   �� $ border��6@   # � ��6T    � ��5.      P� 5/       �@J�IsMouseOver . . �50   "   �� $ border��6?   8   � ��6S   �� 51   "   $ border��6@   8   � ��6T   52      P� 53       � �� . . �54   "   �� $ border��6?   8   � ��6S   �� 55   "   $ border��6@   8   � ��6T   56      P� 57       � {� .  . �58   "   �� $ border��6?   8   � ��6S   �� 59   "   $ border��6@   8   � ��6T   �� 5:   "   $ contentPresenter��6K   8 	  � ��6i   5;      5=      5?      5@      5A      .��5B      � 
�������.+�5C   
   �� -   5        $��
Nametxtbox��5C      $��Center=�6$   $��	0,135,0,0q�6A    �� TextWrapping$
 Wrap=�6T   $��30(�6h   $	��Top=�6w   $	��356��6�   $��53��6�   G� 5D   
   -   5        $��
Passtxtbox��5D      $��Center=�6)   $��	0,217,0,0q�6H   $	��Top=�6[   $	��356��6s   $��53��6   �� 5E   
   $
��Name��6   $��20(�6   $
��Bold"�6-   $
��Left=�6?   $��145,141,0,0q�6Z   $	��Top=�6o   $��41��6�   $��72��6�   �� 5F   
   $��Password��6   $��20(�6#   $
��Bold"�61   $
��Left=�6C   $��109,223,0,0q�6^   $	��Top=�6s   $��36��6�   $	��108��6�   �� 5G   
   -   5        $��LoginBtn��5G   8   #��� 
 6   $��Login��6H   $��20(�6X   $
��Bold"�6f   $��Center=�6x   $��	0,310,0,0q�6�   $	��Top=�6�   $��61��6�   $	��120��6�   6�   5I      5J      