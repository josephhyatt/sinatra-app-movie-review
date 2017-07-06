class ReviewController < ApplicationController

  # Create
  get '/reviews/new' do # takes you to the create a movie review page
    if is_logged_in?
      erb :'reviews/new'
    else
      flash[:message] = "Looks like you weren't logged in yet. Please log in below."
      redirect to '/login'
    end
  end

end
