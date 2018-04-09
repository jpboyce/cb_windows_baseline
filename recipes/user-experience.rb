#
# Cookbook:: cb_windows_baseline
# Recipe:: user-experience
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#- Set network profile to private

#- Notification Area Icons > Always show all icons
registry_key 'HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' do
   values [{
     name: 'NoAutoTrayNotify',
     type: :dword,
     data: 1,
   }]
   action :create
end

#- Taskbar properties > Taskbar Buttons > Never Combined
# Credit: http://blog.unlockforus.org/2012/05/windows-7-start-menu-taskbar-appearance.html
registry_key 'HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' do
   values [{
     name: 'TaskbarGlomLevel',
     type: :dword,
     data: 2,
   }]
   action :create
end

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

# IE Enhanced Security Configuration for Admins: Off
# Credit: https://4sysops.com/archives/four-ways-to-disable-internet-explorer-enhanced-security-configuration-ie-esc/
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}' do
   values [{
     name: 'IsInstalled',
     type: :dword,
     data: 0,
   }]
   action :create
end

# IE Enhanced Security Configuration for Users: Off
# Credit: https://4sysops.com/archives/four-ways-to-disable-internet-explorer-enhanced-security-configuration-ie-esc/
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}' do
   values [{
     name: 'IsInstalled',
     type: :dword,
     data: 0,
   }]
   action :create
end
