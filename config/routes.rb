Rails.application.routes.draw do
  # Api definition
  # Rails will automatically map that namespace to a directory matching the 
  # name under the controllers folder
  namespace :api, defaults: {format: :json}, 
  								constraints: { subdomain: 'api' }, path: '/' do
    # We are going to list our resources here
  end
end

