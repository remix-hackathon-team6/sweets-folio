class ShouhinsController < ApplicationController
  def show
	@shouhin = Shouhin.find(params[:id])
  end
end
