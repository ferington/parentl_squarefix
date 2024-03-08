Rails.application.routes.draw do

  scope module: :user do
    root to: 'homes#top'
    get "about" => "homes#about", as:"about"
    resources :posts,only: [:new, :index, :show, :edit, :create, :destroy, :update]
    
  end
  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }

  devise_for :memders, controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
