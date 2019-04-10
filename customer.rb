class Customer

  attr_reader :name, :cash_in_wallet
  attr_writer :cash_in_wallet

  def initialize(name, cash_in_wallet)
    @name = name
    @cash_in_wallet = cash_in_wallet
  end

  def deduct_cash_from_wallet(amount)
    return @cash_in_wallet -= amount
  end

end
