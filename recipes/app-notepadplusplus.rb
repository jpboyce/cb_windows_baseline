#
# Cookbook:: cb_windows_baseline
# Recipe:: app-notepadplusplus
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Download and Unzip the file
seven_zip_archive 'NotepadPlusPlus.zip' do
  source 'https://notepad-plus-plus.org/repository/7.x/7.5.6/npp.7.5.6.bin.x64.zip'
  path 'C:\Program Files (x86)\Notepad++'
  overwrite true
end
