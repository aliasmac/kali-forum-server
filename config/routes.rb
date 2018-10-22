Rails.application.routes.draw do
  get 'index/show'
  get 'index/update'
  get 'index/edit'
  get 'index/destroy'
  get 'index/create'
  get 'index/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      resources :posts, :users  
    end 
  end 

end
