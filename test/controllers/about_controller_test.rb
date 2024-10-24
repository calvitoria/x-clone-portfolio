require "test_helper"

class AboutControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get "/about"
    assert_response :success
    assert_select "h2", "Hi There!"
  end
end
