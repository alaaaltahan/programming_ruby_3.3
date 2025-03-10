class ProcExample
    def pass_in_block(&action)
      @stored_proc = action      
    end

    def use_proc(parameter)
      @stored_proc.call(parameter)      
    end
end

eg = ProcExample.new
eg.pass_in_block {|param| puts "this square parameter  is #{param*param}"}
eg.use_proc(98)