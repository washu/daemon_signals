require "daemon_signals/version"

module DaemonSignals
  # Enhance the Process module
  module << ::Process
    alias :orignial_daemon :daemon
    def daemon(a=false,b=false)
      orignial_daemon(a,b)
      Process.kill('CONT',0)
    end
  end  
end
