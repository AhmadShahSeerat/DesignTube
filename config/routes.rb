Rails.application.routes.draw do
  resources :collages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/designs', to: "designs#index"   index
  # get '/designs/new', to: "designs#new"  new
  # post '/designs', to: "designs#create"   create

  # get '/designs/:id/edit', to: "designs#edit"   edit
  # put '/designs/:id', to: "designs#update"     update
  # delete '/designs/:id', to: "designs#destroy"     destroy

  # get '/designs/:id', to: "designs#show", as: 'design' show  


  resources :designs  #gives us all of the above 


  get '/most_recent', to: "designs#most_recent", as: "recent"   #custom route, THIS IS EXACTLY AS /most_recent
  # we can add this as recent_path in application.html or /most_recent both works the same way

get '/search', to: 'designs#search', as: "search" 

# we should remember any routes other than resources should be separated here


  


end
