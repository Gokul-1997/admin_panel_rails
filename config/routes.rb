Rails.application.routes.draw do
	  post 'users/reg'
	  post 'users/demo'
	  get 'users/login'
	  get'users/index'
get'users/error'
get'users/admin'
get'users/register'

controller :sessions do
    delete 'logout' => :destroy
end
 root to: 'users#register'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
