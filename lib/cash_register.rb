class CashRegister
  attr_accessor :total, :discount, :items

  def items
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
    quantity.times do
    self.items << item
  end
  end

  def apply_discount
    if @discount > 0
      @total = @total - @total * @discount / 100.0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  
end
