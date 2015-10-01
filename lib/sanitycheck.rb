module Sanitycheck

  @processes = []

  def self.setup
    yield(@processes)
    check_processes
  end

  def check_processes 
  	puts "HELLO BIATCH" 
  	puts @processes 
  end


end
