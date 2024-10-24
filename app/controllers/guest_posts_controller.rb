class GuestPostsController < ApplicationController
  def index
    @guestpost = GuestPost.new
    @guestposts = GuestPost.order(created_at: :desc)
  end

  def create
    @guestpost = GuestPost.new(guestpost_params)

    redirect_to guestbook_path if @guestpost.save
  end

  private

  def guestpost_params
    params.require(:guest_post).permit(:author, :title, :body)
  end
end

