Thedailybadge::Application.routes.draw do
  
  root 'welcome#index'

  resources :users do
    resources :badges
  end

  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"

end
