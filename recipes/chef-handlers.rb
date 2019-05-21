# Chef Handlers Recipe
# Adding certain handlers in

# Include chef_handler
# include_recipe 'chef_handler'

# Install the gem
# chef_gem 'chef-handler-elapsed-time'

# Load the gem
# require 'chef/handler/elapsed_time'

# Activate the handler
# chef_handler 'Chef::Handler::ElaspedTime' do
#  source 'chef/handler/elapsed_time'
#  action :nothing
# end.run_action(:enable)
