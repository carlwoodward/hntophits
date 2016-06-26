Rails.application.routes.draw do
  concern :paginatable do
    get '(page/:page)', :action => :index, :on => :collection, :as => ''
  end

  resources :stories, :concerns => :paginatable, only: [ :index, :show ]
  resources :top_hits, :concerns => :paginatable, only: :index

  root "stories_front_page#index"
end
