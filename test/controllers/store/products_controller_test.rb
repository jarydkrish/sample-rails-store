require 'test_helper'

class Store::ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get store_products_show_url
    assert_response :success
  end

end
