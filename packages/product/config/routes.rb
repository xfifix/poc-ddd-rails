Rails.application.routes.draw do
  # Define your application routes.yml per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #  get '/product', to: 'product#index',  as: :index
  resources :product, :controller => "product"

end
