Rails.application.routes.draw do
  concern :paginatable do
    get '(page/:page)', :action => :index, :on => :collection, :as => ''
  end

  resources :stories, :concerns => :paginatable
  resources :top_hits, :concerns => :paginatable
  root "stories_front_page#index"
end
