Rails.application.routes.draw do
  # get 'apartments/index'
  # get 'apartments/show'
  # get 'apartments/edit'
  # get 'apartments/new'
  # get 'apartments/delete'
  # get 'buildings/index'
  # get 'buildings/show'
  # get 'buildings/edit'
  # get 'buildings/new'
  # get 'buildings/delete'
  # get 'welcomes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root "welcomes#index"
  resources :buildings do 
    member do 
    get :delete
    end
  end  
  resources :apartments do
    member do 
    get :delete
    end
    end 

end
