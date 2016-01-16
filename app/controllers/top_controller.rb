class TopController < ApplicationController

  def home
    # 店舗数が少ないので、とりあえず全店舗取得
    @shouhins = Shouhin.all
  end

  def search
  end

end
