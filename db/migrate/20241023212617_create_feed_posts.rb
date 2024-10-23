class CreateFeedPosts < ActiveRecord::Migration[7.2]
  def change
    create_table :feed_posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
