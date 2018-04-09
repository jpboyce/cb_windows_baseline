#
# Cookbook:: cb_windows_baseline
# Recipe:: remote-management
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Enable RDP
registry_key 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server' do
   values [{
     name: 'fDenyTSConnection',
     type: :dword,
     data: 0,
   }]
   action :create
end

# Enable Remote Management
execute 'Enable Remote Management' do
  command 'Configure-SMRemoting.exe -GET & Configure-SMRemoting.exe -ENABLE & Configure-SMRemoting.exe -GET'
  action :run
end
