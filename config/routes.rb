Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#top'
  get 'homes/about' => 'homes#about'

  # 会員用ルーティング
  resources :contacts, only: [:new, :create]
  post 'contacts/confirm' => 'contacts#confirm'
  get 'contacts/thanks' => 'contacts#thanks'

  resources :requests, only: [:new, :create]
  post 'requests/confirm' => 'requests#confirm'
  get 'requests/thanks' => 'requests#thanks'

  # 管理者用ルーティング
  devise_for :admins, controllers: {
  	sessions:      'admins/sessions',
  	passwords:     'admins/passwords',
  	registrations: 'admins/registrations'
  }

  namespace :admins do
  	get 'home/top' => 'home#top'
  	 resources :contacts, only: [:index, :show, :update]
     resources :requests, only: [:index, :show, :update]
  end

end
