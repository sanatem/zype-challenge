Rails.application.routes.draw do
  root 'zype_videos#index'

  resources :zype_videos, only: [:index, :show]
end
