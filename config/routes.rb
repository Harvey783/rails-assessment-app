Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'signout', sign_up: 'register' }, controllers: { omniauth_callbacks: 'user/omniauth_callbacks' }

  resources :projects do
    resources :activities
  end

  root 'welcome#home'
end
