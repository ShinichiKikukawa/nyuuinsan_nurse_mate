require 'test_helper'

class NgItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ng_items_new_url
    assert_response :success
  end

end
