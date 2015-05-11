Rails.application.routes.draw do
  resources :users
  get 'signin' => 'sessions#new'
  resource :session

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  root 'client#index'

end
