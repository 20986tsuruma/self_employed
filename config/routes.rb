Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#top'
  get 'homes/about' => 'homes#about'

  # 会員用ルーティング
  resources :contacts, only: [:new, :create]

  # 管理者用ルーティング
  devise_for :admins, controllers: {
  	sessions:      'admins/sessions',
  	passwords:     'admins/passwords',
  	registrations: 'admins/registrations'
  }

  namespace :admins do
  	get 'home/top' => 'home#top'
  	 resources :contacts, only: [:index, :show, :edit, :update]
     resources :requests, only: [:index, :show, :edit, :update]
  end

end
