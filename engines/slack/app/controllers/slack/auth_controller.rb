module Slack
  class AuthController < ApplicationController
    def show
      redirect_to main_app.root_path
    end
  end
end
