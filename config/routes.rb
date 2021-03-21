
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  get 'pages/residential'
  get 'pages/commercial'
  get 'pages/404'
  get 'quotes/quotes'
  get 'pages/charts'
  get 'pages/diagram'
  get 'page/interventions'
  get 'get_building_by_customer/:customer_id', to: 'interventions#get_building_by_customer' 
  get 'get_batterie_by_building/:building_id', to: 'interventions#get_batterie_by_building' 
  get 'get_column_by_batterie/:batterie_id', to: 'interventions#get_column_by_batterie' 
  get 'get_elevator_by_column/:column_id', to: 'interventions#get_elevator_by_column' 
  post '/create' => 'interventions#create'
  devise_for :users
  
  root to: "home#index"
  
  get '/interventions'=> 'pages#interventions'
  get '/commercial'   => 'pages#commercial'
  get "/home"         => 'home#index'
  get '/404'          => 'pages#404'
  get '/quotes'       => 'quotes#quotes'
  get '/residential'  => 'pages#residential'
  get '/charts'       => 'pages#charts'
  get '/diagram'      => 'pages#diagram'
  get '/news'         => 'home#news'
  get '/clients'      => 'home#clients'
  get '/contact'      => 'contact#index'
  get '/portfolio'    => 'home#portfolio'
  get '/charts'       => 'charts#dashboard'
  #get '/maps'       => 'maps#dashboard'
  post '/leads'       => 'leads#create'
  post '/quotes'      => 'quotes#create'
  authenticate :user, ->(user) {user.admin?} do
    get '/fuckit' => 'interventions#interventions'
  end

  get 'buildinglocalisation' => 'buildinglocalisation#building'
  get '/speak'       => 'speak#speech'
  # get '/speak', to: 'speak#text_to_speech', as: 'button'
  
  devise_scope :user do 
    get "/signup"     => "devise/registrations#new" 
    get "/signin"     => "devise/sessions#new" 
    get "/signout"    => "devise/sessions#destroy"
    get "/changepassword" => "devise/passwords#new"

    post "/signup"     => "devise/registrations#new" 
    post "/signin"     => "devise/sessions#new" 
    post "/signout"    => "devise/sessions#destroy"
    post "/changepassword" => "devise/passwords#new"
  end

  Rails.application.routes.draw do
    resources :quotes, only: [:new, :create]
  end
end