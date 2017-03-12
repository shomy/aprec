class ListingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @listings = current_user.listings
  end

  def show
    @listing = Listing.find(params[:id])

  end

  def new

    @listing = current_user.listings.build
  end

  def create
    #パラメータとともに作成
      @listing = current_user.listings.build(listing_params)
  if @listing.save
    redirect_to manage_listing_basics_path(@listing), notice: "作成保存完了"
  else
    redirect_to manage_listing_basics_path(@listing), notice: "作成保存失敗"
  end
  end

  def edit
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    redirect_to :back, notice: "更新完了"
  end

  def basics
    @listing = Listing.find(params[:id])
  end

  private
  def listing_params
    params.require(:listing).permit(:company,:kigyoutantou,:address,:tel,:comment)
  end
end
