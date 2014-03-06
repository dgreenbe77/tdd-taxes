require 'CSV'
require 'pry'
class Tax
attr_reader :first_name, :last_name, :annual, :paid, :rate

def initialize(first_name, last_name, annual, paid, rate)
  @first_name = first_name
  @last_name = last_name
  @annual = annual
  @paid = paid
  @rate = rate
end

def owed
  @annual * @rate/100.0
  binding.pry
end

def tax_return
  owed - paid
end

end
