require 'CSV'

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

  end

  def tax_due
    owed - paid
  end

  def liability
    if tax_due < owed && tax_due >= 0
       return "#{first_name} #{last_name} owes $#{tax_due.to_i} in taxes"
    else
      return "#{first_name} #{last_name} will receive a refund of $#{tax_due.abs.to_i}"
    end
  end

  def to_s
      liability
  end

end


people = []


CSV.foreach('../taxes.csv', headers: true, header_converters: :symbol, converters: :all ) do |row|
    people << Tax.new(row[:first_name], row[:last_name], row[:annual_income], row[:tax_paid], row[:tax_rate])
end

puts people
