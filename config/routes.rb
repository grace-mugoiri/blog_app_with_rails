Blogger::Application.routes.draw do 
  resources :articles #tells ruby we have a resources named aricles and router should expect requests to follow RESTful model of web iteraction
end