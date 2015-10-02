module SanityCheck

  class Processes
    attr_accessor :names, :is_aggressive

    def check_processes
      names.each do |process_name|
        id = system("pgrep -f #{process_name} > /dev/null 2>&1")
        unless id
          puts "SanityCheck: #{process_name} IS A DEPENDENCY YET IT IS NOT RUNNING!"
        end
      end
      if is_aggressive
        raise "SanityCheck:: YOU HAVE FORGOT TO PRE-RUN SOME PROCESSES"
      end
    end
  end

  def self.setup
    yield(Processes.new)
  end

end