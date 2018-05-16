Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'signout', sign_up: 'register' }, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'welcome#home'
end
