# frozen_string_literal: true

require "test_helper"

class AboutComponentTest < ViewComponent::TestCase
  def test_component_renders_correctly
    rendered_component = render_inline(AboutComponent.new)

    assert_includes rendered_component.to_html, "Vitória Calvi"
    assert_includes rendered_component.to_html, "🌸"
    assert_includes rendered_component.to_html, "Crafting dreams with code! 💻"
    assert_includes rendered_component.to_html, "Full-stack software engineer."
    assert_includes rendered_component.to_html, "she/her"
    assert_includes rendered_component.to_html, "October 8th"
    assert_includes rendered_component.to_html, "Since 2021"
  end
end
