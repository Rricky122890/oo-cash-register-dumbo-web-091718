class CashRegister
  attr_accessor :total, :discount, :price, :title, :items


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items =[]
  end

  def add_item(title, price, quantity=1)
     @title = title
     @total += (price * quantity)
     @quantity = quantity
     quantity.times do |item|
       @items << title
     end

  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."

    elsif
        @total = total.to_f - (@total * (discount.to_f/100.to_f))
        @total = @total.to_i
        return "After the discount, the total comes to $#{@total}."
    end
  end

 def void_last_transaction
   self.total -= @total 
 end


  # end class
end
