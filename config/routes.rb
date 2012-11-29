Rails.application.routes.draw do
  namespace :admin do
    resources :dj_reports do
      collection do
        get :all
        get :failed
        get :active
        get :queued
        get :dj_counts
        get :settings
      end
      member do
        post :retry
      end
    end
  end
  root :to => 'dj_reports#index'
end
