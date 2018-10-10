class CashRegister
  attr_accessor :total, :discount, :items

  def cart
    @items
  end

  def initialize(emp_discount = 0)
    @discount = emp_discount
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity = 1)
    previous_total = @total
    @total = @total + price * quantity
    self.cart << item
  end

  def apply_discount

  end

end
