class Pub

  attr_reader :name, :cash_in_till, :drinks

  def initialize(name, cash_in_till, drinks)
    @name = name
    @cash_in_till = cash_in_till
    @drinks = drinks
  end

end
