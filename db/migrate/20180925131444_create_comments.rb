class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user
      t.references :post
      t.string :name
      t.string :email
      t.string :body

      t.timestamps
    end
  end
end
