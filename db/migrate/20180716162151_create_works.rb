class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
    	t.string :name
    	t.text :message
    	t.string :address
    	t.string :email

      t.timestamps
    end
  end
end
