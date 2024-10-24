# frozen_string_literal: true

class GuestPostComponent < ViewComponent::Base
  include CalvatarHelper
  
  def initialize(author:, body:, updated_at:)
    @author = author
    @body = body
    @updated_at = updated_at
  end
end
