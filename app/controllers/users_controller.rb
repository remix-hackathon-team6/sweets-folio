class UsersController < ApplicationController
  #defaultではコントローラ内の全てのアクションに適用
  #onlyで制限
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  
  def new
  	@user = User.new
  end


  def index
  	@users = User.paginate(page:params[:page])
  end


  def show
	  #find([1, 2, 3]) ->  [#<id:1, ...>, <#id:2, ...>, <#id:3, ...>]
	  #find_by one response
	  @user = User.find(params[:id])
  end

  def create
	  @user = User.new(user_params)
	  if @user.save
	  	sign_in @user
		redirect_to @user
	  else
		  render 'new'
	  end
  end
  
  
  def edit
  end


  def update
    	@user = User.find(params[:id])
    	if @user.update_attributes(user_params)
      		redirect_to @user
    	else
      		render 'edit'
    	end
  end
  
  
  def destroy
    	User.find(params[:id]).destroy
    	redirect_to users_url
  end



  private
  	def user_params
	  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end
    	
end
