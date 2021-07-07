Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/upload_tv_series_csv', to: 'tv_series#upload_tv_series_csv', as: 'upload_tv_series_csv', via: [:get, :post]
  match '/upload_rating_csv', to: 'tv_series#upload_rating_csv', as: 'upload_rating_csv', via: [:get, :post]
  match '/search_actor', to: 'tv_series#search_actor', as: 'search_actor', via: [:get, :post]
  root :to => 'tv_series#index'
end
