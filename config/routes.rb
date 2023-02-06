Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  scope module: :public do
    root to: "homes#top"
    get 'about' => "homes#about"
    resources :items, only: [:index, :show]
    get 'customers/my_page' => "customers#show"
    get 'customers/information/edit' => "customers#edit"
    patch 'customers/information' => "customers#update"
    get 'customers/unsubscribe' => "customers#unsubscribe"
    patch 'customers/withdraw' => "customers#withdraw"
    resources :cart_items, except: [:new, :show, :edit]
    delite 'cart_items/destroy_all' => "cart_items#destroy_all"
    resources :orders, except: [:edit, :update, :destroy]
    post 'orders/confirm' => "orders#comfirm"
    get 'orders/complete' => "orders#complete"
    resources :addresses, except: [:new, :show]
  end

  namespace :admin do
    root to: "homes#top"
    resources :items, except: [:destroy]
    resources :genres, except: [:new, :show, :destroy]
    resources :customers, except: [:new, :create, :destroy]
    get 'orders' => "orders#show"
    patch 'orders' => "orders#update"
    patch 'order_details' => "order_details#update"
  end

end
