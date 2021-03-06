class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.belongs_to :user
      t.references :comments
      t.timestamps
    end
  end
end
