class AuthController < ApplicationController
  skip_before_action :authenticate_user!
  
  def register
  end

  def login
  end
end
