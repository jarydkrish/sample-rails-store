require 'test_helper'

class Store::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_pages_index_url
    assert_response :success
  end

end
