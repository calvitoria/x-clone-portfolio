# frozen_string_literal: true

require "test_helper"

class FeedPostComponentTest < ViewComponent::TestCase
  def test_component_renders_feed_post
    title = "My Awesome Post"
    body = "This is the content of my awesome post."
    updated_at = Time.new(2024, 10, 23)

    # Render the FeedPostComponent with given attributes
    rendered_component = render_inline(FeedPostComponent.new(title: title, body: body, updated_at: updated_at))

    # Assertions to check if the component renders correctly based on content
    assert_includes rendered_component.text, "Vitória Calvi 🌸"
    assert_includes rendered_component.text, "@calvitoria"
    assert_includes rendered_component.text, "• #{updated_at.strftime("%d %b %Y")}"
    assert_includes rendered_component.text, title
    assert_includes rendered_component.text, body
  end
end
