class AddFieldsToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :position, :string
  end
end
