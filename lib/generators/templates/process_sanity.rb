require 'process_sanity'
ProcessSanity.setup do |config|

  #array of your environment's processes to check against
  #for example:
  #processes.names = ['redis', 'postgres', 'sidekiq']
  config.names = []

  #Stops the server if any of the listed processes is not running
  #processes.is_aggressive = true

  #Use desktop notifications
  #config.desktop_notifications = true

  #init
  config.check_processes


end