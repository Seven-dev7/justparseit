Rails.application.routes.draw do
  root to: 'static_pages#landing_page'
  resources :csv_loaders, only: %i(show create update) do
    resources :csv_elements
    member do
      get 'new_csv_display'
    end
  end
end
