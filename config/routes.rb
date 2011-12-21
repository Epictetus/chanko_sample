ChankoSample::Application.routes.draw do
  match '/' => "articles#index", :as => 'top'

  resources :users do
  end

  resources :articles do
  end
end
