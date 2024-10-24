class CreateProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :projects do |t|
      t.string :link
      t.string :title
      t.text :body
      t.string :stack

      t.timestamps
    end
  end
end
