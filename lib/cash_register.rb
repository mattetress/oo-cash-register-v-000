class CashRegister
  attr_accessor :total, :discount


  def initialize(emp_discount = 0)
    @discount = emp_discount
    @total = 0
  end

  def add_item(item, price, quantity = 1)
    previous_total = @total
    @total = @total + price * quantity
    @items << item
  end


end
