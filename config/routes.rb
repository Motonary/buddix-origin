Rails.application.routes.draw do
  root 'index#index'
  get  'home/about'

  scope module: 'index' do
    get 'buddix', as: :buddix_info
    get 'terms_of_service'
    get 'privacypolicy'
    get 'corp'
    get 'faq'
  end

  #resource :facebook_user, only: [] do
  #  get 'login_oauth'
  #  get 'login_oauth_callback'
  #  get 'edit_oauth'
  #  get 'edit_oauth_callbak'
  #end

  resources :users, :only => [:show]
    get     'login',   to: 'sessions#new'
    post    'login',   to: 'sessions#create'
    delete  'logout',  to: 'sessions#destroy'

    get 'checkmail', to: "users#checkmail"

  get "/users_info" => "users_info#new", as: :users_info
  post "/users_info" => "users_info#create"


  if Rails.env.development? #開発環境の場合
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
