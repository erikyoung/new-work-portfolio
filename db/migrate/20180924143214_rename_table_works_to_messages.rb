class RenameTableWorksToMessages < ActiveRecord::Migration[5.1]
  def change
    rename_table :works, :messages
  end
end
