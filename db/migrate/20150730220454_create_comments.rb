class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :article, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :articles
    add_foreign_key :comments, :users
  end
end
