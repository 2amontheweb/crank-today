module Slack
  module V1
    class MessagesController < ApplicationController
      def create
        return no_user if find_user.blank?
        @message_service = find_message_service
        render json: @message_service.handle
      end

      private

      def find_message
        @message ||= find_user.messages.includes(:user).for_today
      end

      def find_message_service
        @message_service ||= ::Slack::MessageService.new(message: find_message, text: message_params[:text],
                                                         user: find_user)
      end

      def find_user
        @user ||= ::User.includes(:team).find_by(provider: :slack, uid: message_params[:user_id])
      end

      def message_params
        params.permit(:text, :user_id)
      end

      def no_user
        render json: "No User Found. Please visit #{main_app.root_url} and Sign in with Slack to start cranking!"
      end
    end
  end
end
