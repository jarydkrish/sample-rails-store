Rails.application.routes.draw do

  namespace :store do
    get 'pages/index'
  end

  authenticate :user do
    scope :admin do
      get 'products/new', to: 'admin/products#new'
      get 'products/:id/edit', to: 'admin/products#edit'
      get 'products/:id/show', to: 'admin/products#show'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "store/pages#index"
  get 'products/:id', to: 'store/product#show'

end
