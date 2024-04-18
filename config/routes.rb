Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'home#index'
  get 'about', to: 'about#index'
  get 'contact_us', to: 'contact_us#index'
  post 'contact_us/submit', to: 'contact_us#submit'
end
