# DaemonSignals

This gem enhances Process.daemon to raise a signal (SIGCONT) when your process has bene daemonized. This gem is has been created
to handle daemonization in web servers like puma, so that any background threads you may have created can be restarted if they were
started BEFORE the daemon call was issued. IF you using gems like puma be sure to include this gem after puma as it redefines Process.daemon

## Installation

Add this line to your application's Gemfile:

    gem 'daemon_signals'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install daemon_signals

## Usage

1. require 'daemon_signals'
2. Signal.trap('CONT') do
	... code on process daemonization
   end
3. Profit
## Contributing

1. Fork it ( http://github.com/<my-github-username>/daemon_signals/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
