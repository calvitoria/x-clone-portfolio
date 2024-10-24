class CreateGuestPosts < ActiveRecord::Migration[7.2]
  def change
    create_table :guest_posts do |t|
      t.string :author
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
