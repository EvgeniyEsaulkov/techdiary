Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  get "/", to: "rails/welcome#index"
end
