#
# Cookbook:: cb_windows_baseline
# Recipe:: app-sysinternals
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Download and install sys internals

# Download sys internals from internet
# remote_file 'file:///c:/temp/SysInternalsSuite.zip' do
#  source 'https://download.sysinternals.com/files/SysinternalsSuite.zip'
#  action :create
# end

# Download and Unzip the file
seven_zip_archive 'SysInternals.zip' do
  source 'https://download.sysinternals.com/files/SysinternalsSuite.zip'
  path 'C:\SysInternals'
  overwrite true
end

# Add SysInternals to Path environment variable
windows_path 'SysInternals' do
  path 'C:\SysInternals'
  action :add
end
