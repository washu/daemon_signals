require 'test/unit'
require 'daemon_signals'

class DaemonSignalsTest < Test::Unit::TestCase
	def test_signal_raised
		signaled = false
    Signal.trap('CONT') do
      signaled = true
    end
    Process.daemon
    sleep 0.1 until signaled
    assert(signaled)
	end
end
