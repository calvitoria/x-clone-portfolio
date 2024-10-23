# frozen_string_literal: true

class FeedPostComponent < ViewComponent::Base
  def initialize(title:, body:, updated_at:)
    @title = title
    @body = body
    @updated_at = updated_at
  end
end
