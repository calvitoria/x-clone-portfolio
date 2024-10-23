Rails.application.routes.draw do
  root "feed#index"

  get "/feed", to: "feed#index"
end
