Rails.application.routes.draw do
  root 'application#home'

  get '/graph' => 'graphs#index'
  get 'graph/data', :defaults => { :format => 'json' }
end
