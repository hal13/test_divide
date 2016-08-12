require "test_divide/version"

module TestDivide
  class TestDivide
    def divide(a, b)
      begin
        if b == 0
          exit(1)
        end
      rescue SystemExit
        $stderr.print "0 divided"
        return false
      end

      return a / b

    end
  end
end
