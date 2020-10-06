Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  root to: 'pages#home' do
    resources :contacts, only: %i(new)
  end
  resources :contacts, only: %i(create)

  get 'thanks', to: 'contacts#thanks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
