class AddOrderNumberToTeamOwnerships < ActiveRecord::Migration[6.0]
  def change
    add_column :team_ownerships, :order_number, :integer
  end
end
