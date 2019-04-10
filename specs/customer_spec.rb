require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')


class TestCustomer < MiniTest::Test

  def test_get_customer_name
    customer1 = Customer.new("Bob", 50)
    assert_equal("Bob", customer1.name)
  end


  def test_deduct_cash_from_wallet
    customer1 = Customer.new("Bob", 50)
    customer1.deduct_cash_from_wallet(10)
    assert_equal(40, customer1.cash_in_wallet)
  end
end
