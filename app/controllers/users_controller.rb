class UsersController < ApplicationController

def login


end
def destroy

   sessions[:user_id] = nil
   redirect_to users_login_path, :notice => "Log out"
  end 
def index 


	end
  def error
    @g = JSON.parse(RestClient.get('http://192.168.1.79:4021/emails/admin_panel').body)
  end
  def admin
    byebug
  @g = params["format"]



  
  end
  def register
  end
  def reg
  
  	@user = User.create(email: params[:user][:email],password: params[:user][:password],user_role: params[:user][:user_role])
    if @user.save
   redirect_to users_login_path 
    else
 	 render json: false
    end
  end


  def demo

@user = User.find_by(email: params[:user][:email],password: params[:user][:password])
    byebug
       if @user.user_role == "user"
        
         redirect_to users_index_path 
  	   elsif @user.user_role == "admin"
         redirect_to users_admin_path 
       else
         redirect_to users_error_path      
      end

end



end
