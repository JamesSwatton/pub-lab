class Customer

  attr_reader :name, :age, :cash_in_wallet
  attr_writer :cash_in_wallet

  def initialize(name, age, cash_in_wallet)
    @name = name
    @age = age
    @cash_in_wallet = cash_in_wallet
  end

  def has_enough_funds_to_buy_drink?(drink)
    if @cash_in_wallet >= drink.price
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
