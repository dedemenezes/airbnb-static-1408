Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # verb path, to: controller_name_in_plural#action

  get '/', to: 'flats#index', as: :root
  get '/flats/:id', to: 'flats#show', as: :flat
end
