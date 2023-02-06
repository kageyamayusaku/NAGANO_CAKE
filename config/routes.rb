Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  # public routes #
  root to: 'customer/homes#top'


  namespace :admin do
    get '/' => "homes#top"
    resources :items, except: [:destroy]
    resources :genres, except: [:new, :show, :destroy]
    resources :customers, except: [:new, :create, :destroy]
    get 'orders' => "orders#show"
    patch 'orders' => "orders#update"
    patch 'order_details' => "order_details#update"
  end

end
