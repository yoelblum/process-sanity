module ProcessSanity
  class Processes
    attr_accessor :names, :is_aggressive

    def check_processes
      errors = []
      names.each do |process_name|
        id = system("pgrep -f #{process_name} > /dev/null 2>&1")
        unless id
          puts "Process-Sanity: #{process_name} IS A DEPENDENCY YET IT IS NOT RUNNING!"
          errors.push(process_name)
        end
      end
      if errors.present?
        raise "Process-Sanity:: YOU HAVE FORGOT TO PRE-RUN SOME PROCESSES: #{process_names.inspect}"  if is_aggressive
      end
        if desktop_notifications
          system("terminal-notifier -m 'Process-Sanity: Forgot these processes: ' #{errors.inspet}" )
        end

    end
  end

  def self.setup
    yield(Processes.new)
  end
end
