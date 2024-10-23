# frozen_string_literal: true

require 'test_helper'

class FeedControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get "/"
    assert_response :success
    assert_select "h1", "Feed#index"
  end
end
