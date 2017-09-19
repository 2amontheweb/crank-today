module Slack
  module V1
    class MessagesController < ApplicationController
      def create
        render json: 'Hello, World!'
      end
    end
  end
end
