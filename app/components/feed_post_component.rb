# frozen_string_literal: true

class FeedPostComponent < ViewComponent::Base
  def initialize(title:, body:, updated_at:, post_id:)
    @title = title
    @body = body
    @updated_at = updated_at
    @post_id = post_id
  end
end
