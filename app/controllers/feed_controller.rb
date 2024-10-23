# frozen_string_literal: true

class FeedController < ApplicationController
  def index
    @feed_posts = FeedPost.all
  end
end
