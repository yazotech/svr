Svr::Application.routes.draw do
  resources :headers
  resources :logins, :only => [:create], :path => 'login'

  scope '~svr' do
	  resources :headers
    resources :logins, :only => [:create], :path => 'login'    
  end

end
