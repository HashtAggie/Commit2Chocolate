Rails.application.routes.draw do

  get 'welcome/index'

  get 'user/index'

  devise_for :users
  resources :products
  resources :shopping_cart_items
 #  Rails.application.routes.draw do
  get 'user_reviews/:user_id' => 'reviews#user', as: :user_reviews
  get 'cartoverview' => 'products#cartoverview'
  get 'shopping_cart_items/create'

  get 'shopping_cart_items/update'

  get 'shopping_cart_items/destroy'

  get 'welcome/index'
  get 'welcome/responds'

 #   devise_for :users, controllers: {
 #     sessions: 'users/sessions'
 #   }
 # end
 root to: "welcome#index"

 get 'welcome/about' => 'welcome#about'
 get 'welcome/contact' => 'welcome#contact'

end
