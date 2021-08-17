require "test_helper"

class OficinasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oficinas_index_url
    assert_response :success
  end
end
