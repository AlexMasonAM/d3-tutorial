Rails.application.routes.draw do
  root 'application#home'

  
  get '/graph' => 'graphs#index'
  get '/force' => 'forces#index'
  get '/force01' => 'graphs#force01'
  get '/force02' => 'graphs#force02'
  get '/force04' => 'graphs#force04'
  get '/slider' => 'graphs#slider'
  get '/omg-particles' => 'graphs#omg-particles'
  get 'graph/data', :defaults => { :format => 'json' }
  get '/piano' => 'application#piano-tutorial'
  get '/d3noob' => 'application#d3Noob-tutorial'
  get '/image03' => 'application#image-tutorial-03'
  get '/image01' => 'application#image-tutorial'
end
