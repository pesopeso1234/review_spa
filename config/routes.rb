Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :only =>[:edit,:update,:destroy]
  get 'users/edit_complete'             => "users#edit_complete", as: :edit_complete
  get 'users/withdraw_confirm'          => "users#withdraw_confirm", as: :withdraw_confirm
  get 'users/withdraw_complete'         => "users#withdraw_complete", as: :withdraw_complete

  resources :favorites, :only =>[:create,:destroy]

  resources :spas, :only =>[:index,:show]
  get 'spas/detail_search_form'         => "spas#detail_search_form", as: :detail_search_form
  get 'spas/detail_search'              => "spas#detail_search", as: :detail_search
  get 'spas/detail_search_list'         => "spas#detail_search_list", as: :detail_search_list
  get 'spas/index_search'               => "spas#index_search", as: :index_search
  get 'spas/index_search_list'          => "spas#index_search_list", as: :index_search_list

  resources :reviews, :only =>[:new,:create,:edit,:update,:destroy]
  get 'reviews/complete'                => "reviews#complete", as: :review_complete
  get 'reviews/edit_complete'           => "reviews#edit_complete", as: :review_edit_complete


  get 'services/service_search_form'    => "services#service_search_form", as: :service_search_form
  get 'services/service_search'         => "services#service_search", as: :service_search
  get 'services/service_search_list'    => "services#service_search_list", as: :service_search_list

end
