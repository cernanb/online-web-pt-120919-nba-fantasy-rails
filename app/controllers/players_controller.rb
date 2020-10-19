class PlayersController < ApplicationController
  def index
    if params[:user_id]
      user = User.find(params[:user_id])
      @players = user.players.joins(:team_ownerships).order('team_ownerships.order_number ASC')
    else
      @players = Player.all
    end

    render json: { players: @players }
  end

  def update_player_order
    order = 1
    player_ids = params[:player_ids]
    player_ids.each do |id|
      item = TeamOwnership.find_by(player_id: id, user_id: current_user.id)
      item.order_number = order
      order += 1
      item.save
    end
    render json: { status: 201 }
  end
end