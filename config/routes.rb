Rails.application.routes.draw do
  concern :paginatable do
    get '(page/:page)', :action => :show, :on => :collection, :as => ''
  end

  resources :show_stories, :concerns => :paginatable
  resources :show_top_hits
  root "stories#index"
end
