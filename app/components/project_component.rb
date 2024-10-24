# frozen_string_literal: true

class ProjectComponent < ViewComponent::Base
  def initialize(title:, body:, link:, stack:, project_id:)
    @title = title
    @body = body
    @link = link
    @stack = stack
    @project_id = project_id
  end
end
