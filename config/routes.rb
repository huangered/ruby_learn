Rails.application.routes.draw do
  get 'plan/index'

  get 'collection/index'

  get 'setting/index'

  get 'mails/index'
  put 'mails/mark_read' => 'mails#markRead'

  devise_for :users
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  resources :pictures
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'test' => "pictures#list"
end
