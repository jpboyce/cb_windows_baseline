#
# Cookbook:: cb_windows_baseline
# Recipe:: user-experience
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#- IE Enhanced Security Configuration: Off (or install Chrome)
#- Taskbar properties > Taskbar Buttons > Never Combined
#- Notification Area Icons > Always show all icons

#- Set network profile to private


#- Control panel set to use Small Icons layout
# 1 = small icons, 0 = large icons
registry_key 'HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel' do
   values [{
     name: 'AllItemsIconView',
     type: :dword,
     data: 1,
   }]
   action :create
end

# cmd.exe layout - width to 150, height to 45
registry_key 'HKEY_CURRENT_USER\Console' do
   values [{
     name: 'WindowSize',
     type: :dword,
     data: 2d0096,
   }]
   action :create
end
