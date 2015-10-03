require 'process_sanity'

ProcessSanity.setup do |processes|

  #array of your environment's processes to check against
  #for example:
  #processes.names = ['redis', 'postgres', 'sidekiq']
  processes.names = []

  #Stops the server if any of the listed processes is not running
  #processes.is_aggressive = true

  #init
  processes.check_processes


end