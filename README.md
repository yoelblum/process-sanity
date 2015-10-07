
# Process-Sanity

Ever experienced silly bugs\behavior because you forgot to run Resque or Sidekiq or Redis?

With Process-Sanity, simply list all your application's process dependencies and let process-sanity check for them each time you start your server.

#Installation

1) Add **'process-sanity'** to Gemfile and **bundle install**

2) from your rails dir run: **rails generate process_sanity**

3) In **process_sanity.rb** (the initialization file created at step #2), simply add the names of the processes you want checked on server start, for example:

```
#process_sanity.rb
processes.names = ["sidekiq", "redis"]  #add whatever other process you application is dependent on
```

By default Process Sanity will log to your console on Rails server start if any process isn't running, which is mostly good for development. If you need something more you can choose to close the server in case of missing process by specifying: 

`processes.is_aggressive = true`



