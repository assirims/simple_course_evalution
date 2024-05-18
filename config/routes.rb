Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root "home#index"
    get "/privacy", to: "home#privacy"
    get "/terms", to: "home#terms"

    resources :reviews

    devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }

    match "/404", to: "errors#not_found", via: :all
    match "/422", to: "errors#internal_server_error", via: :all
    match "/500", to: "errors#internal_server_error", via: :all
  end
end
