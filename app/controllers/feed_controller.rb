# frozen_string_literal: true

class FeedController < ApplicationController
  def index
    @feed_posts = FeedPost.all
    @show_form = request.post?
  end

  def create
    @feed_post = FeedPost.new(feed_posts_params)

    redirect_to feed_index_path if @feed_post.save
  end

  private

  def feed_posts_params
    params.permit(:title, :body)
  end
end
