class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :string
      t.string :title
      t.string :string
      t.string :body
      t.string :string
      t.string :author

      t.timestamps null: false
    end
  end
end
