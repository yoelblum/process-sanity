# process-sanity

Ever experienced silly bugs\behavior because you forgot to run Resque or Sidekiq or Redis?

Process Sanity is a simple solution for a simple problem: 
Simply list all your application's process dependencies and let process-sanity check for them each time you start your server.
If a process is missing you will get a warning in the console (or alternatively you can choose to turn off the server if you want
something more aggressive)

Usage: 

1) Add to Gemfile and bundle install

2) rails generate sanitycheck

3) In the initialization file created at step #2, simply add the names of the processes you want checked on server start
