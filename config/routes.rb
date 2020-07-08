Rails.application.routes.draw do
  root to: "welcome#index"

  get "cities", to: "welcome#cities"
  get "/:city", to: "welcome#index"

  scope ":city" do
    resources :drugs
    resources :drugstores
  end
end
