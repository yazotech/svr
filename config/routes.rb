Svr::Application.routes.draw do
  match 'simple_req' => 'simple_req#index'
  resources :logins, :only => [:create], :path => 'login'

  scope '~svr' do
    resources :logins, :only => [:create], :path => 'login'    
  end

end
