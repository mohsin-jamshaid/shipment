class HomeController < ApplicationController
  def index
    redirect_to new_client_registeration_paths unless client_signed_in?
  end
end
