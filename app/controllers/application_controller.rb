class ApplicationController < Sinatra::Base

  set :default_content_type, 'application/json'
  
  # Get all users
  get '/users' do
    users = User.all
    users.to_json
  end

  # Create a new user
  post '/users' do 
    user = User.create(
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      email: params[:email], 
      password: params[:password], 
      password_confirmation: params[:password_confirmation])
    user.to_json
  end

  # Delete a user
  delete '/users/:id' do
    user = User.all.find(params[:id])
    user.delete
    user.to_json
  end

  # Get all bookings
  get '/bookings' do 
    bookings = Booking.all
    bookings.to_json
  end

  # Create a new booking
  post '/bookings' do 
    booking = Booking.create(body: params[:body], user_id: params[:user_id])
    booking.to_json
  end

  # Update a booking
  patch '/bookings/:id' do
    booking = Booking.all.find(params[:id])
    booking.update(body: body)
    booking.to_json
  end

  # Delete a booking
  delete '/bookings/:id' do
    booking = Booking.all.find(params[:id])
    booking.delete
    booking.to_json
  end

end





