module Slack
  module V1
    class MessagesController < ApplicationController
      def create
        return no_user if find_user.blank?
        render json: "Today's Crank Message: #{find_message.append!(message_params[:text])}"
      end

      private

      def find_message
        @message ||= find_user.messages.for_today
      end

      def find_user
        @user ||= ::User.find_by(provider: :slack, uid: message_params[:user_id])
      end

      def message_params
        params.permit(:text, :user_id)
      end

      def no_user
        render json: 'No User Found. Please visit https://crank.today and Sign in with Slack to start cranking!'
      end
    end
  end
end
