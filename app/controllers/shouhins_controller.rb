class ShouhinsController < ApplicationController
  def show
    @shouhin = Shouhin.find(params[:id])
    @cook = User.find_by(shouhin_id: @shouhin.id)
    @rel_shouhins = Shouhin.where(user_id: @cook.id)
    @comments = Eval.where(shouhin_id_id: @shouhin.id)
    # @reviewer = User.where(id: @comments.user_id_id)
  end
end
