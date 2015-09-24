require 'api_constraints'

Rails.application.routes.draw do
  mount SabisuRails::Engine => "/sabisu_rails"
  devise_for :users
  # Api definition
  # Rails will automatically map that namespace to a directory matching the 
  # name under the controllers folder
  namespace :api, defaults: {format: :json}, 
  								constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1,
    		constraints: ApiConstraints.new(version: 1, default: true) do
      # We are going to list our resources here
      resources :users, :only => [:show, :create, :update, :destroy]
    end
  end
end

