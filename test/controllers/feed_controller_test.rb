# frozen_string_literal: true

require 'test_helper'

class FeedControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get "/"
    assert_response :success
    assert_select "summary", "Create new post"
  end
end
