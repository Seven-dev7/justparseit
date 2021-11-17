Rails.application.routes.draw do
  root to: 'static_pages#landing_page'
  resources :loaders, only: %i(show create update) do
    resources :elements
    member do
      get 'new_file_display'
    end
  end
end
