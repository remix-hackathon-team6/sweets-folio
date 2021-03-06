module SessionsHelper


	def sign_in(user)
		remember_token = User.new_remember_token
		#cookies[:remember_token] = { value:   remember_token,
                #   		              expires: 20.years.from_now.utc }
    		cookies.permanent[:remember_token] = remember_token
    		user.update_attribute(:remember_token, User.encrypt(remember_token))
    		self.current_user = user
    	end
    	
    	
    	def current_user=(user)
    		@current_user = user
  	end
  	
  	
  	def current_user
    		remember_token = User.encrypt(cookies[:remember_token])
    		#@current_userが未定義の場合にのみ、@current_userインスタンス変数に記憶トークンを設定
    		@current_user ||= User.find_by(remember_token: remember_token)
  	end
  	
  	
  	def current_user?(user)
    		user == current_user
  	end
  	
  	
  	def signed_in_user
  		store_location
  		#unless signed_in?
  		#	flash[:notice] = "Please sign in."
  		#	redirect_to signin_url
		#end
      		redirect_to signin_url, notice: "Please sign in." unless signed_in?
    	end
  	
  	def signed_in?
    		!current_user.nil?
  	end
  	
  	
  	def sign_out
    		self.current_user = nil
    		session.clear
    		cookies.delete(:remember_token)
  	end
  	
  	
  	def redirect_back_or(default)
    		redirect_to(session[:return_to] || default)
    		session.delete(:return_to)
  	end

  	def store_location
    		session[:return_to] = request.url
  	end

end
