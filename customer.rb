class Customer

  attr_reader :name, :cash_in_wallet
  attr_writer :cash_in_wallet

  def initialize(name, cash_in_wallet)
    @name = name
    @cash_in_wallet = cash_in_wallet
  end

  # def deduct_cash_from_wallet(drink_price)
  #   return @cash_in_wallet -= drink_price
  # end

  def has_enough_funds_to_buy_drink?(drink_price)
    if @cash_in_wallet >= drink_price
      return true
    else
      return false
    end
  end

  def buy_drink(drink)
    @cash_in_wallet -= drink.price
    return drink.price
  end

  
end
