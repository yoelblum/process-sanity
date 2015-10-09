
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

#Mac Desktop Notifications

It is possible to be alerted via desktop notifications for missing processes: 
1)Install the gem terminal notifier https://github.com/julienXX/terminal-notifier

2) Uncomment config.desktop_notifications = true in process_sanity initializer

#License
The MIT License (MIT)

Copyright (c) <year> <copyright holders>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.



