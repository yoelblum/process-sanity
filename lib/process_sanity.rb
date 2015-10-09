require 'colorize'

module ProcessSanity
  class Processes
    attr_accessor :names, :is_aggressive, :desktop_notifications, :skip_run

    def check_processes
      errors = []
      names.each do |process_name|
        id = system("pgrep -f #{process_name} > /dev/null 2>&1")
        unless id
          puts "Process-Sanity: #{process_name} IS A DEPENDENCY YET IT IS NOT RUNNING!".colorize(:green)
          errors.push(process_name)
        end
      end
      if errors.any?
        if desktop_notifications
          system("terminal-notifier -title 'Process-Sanity' -message 'You forgot to run some processes, Check your Rails Logs!'" )
        end
        raise "Process-Sanity:: YOU HAVE FORGOT TO PRE-RUN SOME PROCESSES: #{process_names.inspect}"  if is_aggressive
      end

    end
  end

  def self.setup
    initializer = Processes.new
    yield(initializer)
    initializer.check_processes if !initializer.skip_run
  end
end
