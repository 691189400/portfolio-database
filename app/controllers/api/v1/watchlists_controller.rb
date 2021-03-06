class Api::V1::WatchlistsController < ApplicationController
  def index
    @watchlists = Watchlist.all
    render json: @watchlists
  end

  def show
    @watchlist = User.find(params[:id]).watchlists
    @symbols = []
    @watchlist.each do |history|
      @symbols << Asset.all.find{|asset| asset.id == history.asset_id}.symbol
    end
    render json: @symbols
  end

  def create
    @user = User.find(1)
    @asset = Asset.find_or_create_by(symbol: params['symbol'].upcase)
    @new_search = @user.watchlists.find_or_create_by(asset_id: @asset.id)

    render json: @new_search
  end

  def update
  end

  def destroy
    @watchlist = User.find(params[:id]).watchlists
    @asset = Asset.find_by(symbol: params['symbol'])
    @symbol = @watchlist.find_by(asset_id: @asset.id)
    @symbol.destroy
  end
end
