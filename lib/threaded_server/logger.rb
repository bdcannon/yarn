module ThreadedServer
  module Logger
    class << self
      attr_accessor :debug

      def debug?;  @debug  end
    end

    def log(message)
      @output.puts message.strip
    end
    module_function :log 
    public :log

    def debug(message=nil)
      @output.puts "debug: " + (message.strip || yield) if Logging.debug?
    end
    module_function :debug 
    public :debug

  end
end
