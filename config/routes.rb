Rails.application.routes.draw do
  get 'welcome/index'

  get 'user/index'

  devise_for :users
  resources :products
  
 #  Rails.application.routes.draw do


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
