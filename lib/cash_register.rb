class CashRegister
  attr_accessor :total

  def initialize(emp_discount = 0)
    @emp_discount = emp_discount
    @total = 0
  end

  def discount
    @emp_discount
  end

end
