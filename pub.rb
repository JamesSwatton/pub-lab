class Pub

  attr_reader :name, :cash_in_till, :drinks

  def initialize(name, cash_in_till, drinks)
    @name = name
    @cash_in_till = cash_in_till
    @drinks = drinks
  end

  def give_drink(drink)
    drinks_index = @drinks.index(drink)
    @drinks.delete_at(drinks_index)  
  end




end
