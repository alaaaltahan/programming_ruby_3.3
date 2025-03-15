class TaxCalculator
  def initialize(name, &block)
    @name, @block = name, block
  end

  def get_tax(amount)
    puts "#{@name} on #{amount} = #{@block.call(amount)}"
  end
end

tc = TaxCalculator.new("sales tax") { |amt| amt * 0.075}

tc.get_tax(100)
tc.get_tax(250)