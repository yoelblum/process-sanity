require 'process_sanity'
ProcessSanity.setup do |config|

  #Do nothing if the gem isn't running under the Rails process (e.g the process that is running is rspec or resque)
  if $0.split("/").last.downcase != 'rails'

    #array of your environment's processes to check against
    #for example:
    #processes.names = ['redis', 'postgres', 'sidekiq']
    config.names = []

    #Stops the server if any of the listed processes is not running
    #processes.is_aggressive = true

    #Use desktop notifications
    #config.desktop_notifications = true

  else
    config.skip_run = true
  end




end