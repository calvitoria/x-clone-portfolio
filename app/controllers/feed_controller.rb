# frozen_string_literal: true

class FeedController < ApplicationController
  def index
    @feed_posts = FeedPost.all
    @show_form = request.post?
  end

  def create
    @feed_post = FeedPost.new(feed_posts_params)
    @feed_post.post_image.attach(feed_posts_params[:post_image])

    redirect_to feed_index_path if @feed_post.save
  end

  def destroy
    @feed_post = FeedPost.find(params[:id])
    @feed_post.destroy

    redirect_to feed_index_path
  end

  private

  def feed_posts_params
    params.permit(:title, :body, :post_image)
  end
end
