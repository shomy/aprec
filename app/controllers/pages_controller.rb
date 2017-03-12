class PagesController < ApplicationController
  def index #views/index.html.erbを表示させるというアクション
    @users = User.all
  end

  def search
    if params[:search].present?

      @latitude = params["lat"]
      @longitude = params["lng"]

      geolocation = [@latitude,@longitude]

      @listings = Listing.near([@latitude,@longitude], 1, order: 'distance')
    # 検索欄が空欄の場合
    else


      @latitude = @listings.to_a[0].latitude
      @longitude = @listings.to_a[0].longitude

    end
  end
end
