require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get '/' do
  @restaurants = Restaurant.all
  erb :index
end

get "/detalhes/:restaurant_id" do
  id = params[:restaurant_id]
  @detalhes = Restaurant.find(id)
  erb :detalhes
end

post '/new_restaurant' do
  restaurant = Restaurant.new(
    name: params[:name],
    address: params[:address],
    rating: params[:rating]
  )
  restaurant.save
  redirect '/'
end







