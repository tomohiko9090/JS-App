require "test_helper"

class OwnersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owners_index_url
    assert_response :success
  end

  test "should get new" do
    get owners_new_url
    assert_response :success
  end
end
