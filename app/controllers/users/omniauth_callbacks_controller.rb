module Users
  class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def passthru; end

    def slack
      callback_from :slack
    end

    private

    def callback_from(provider)
      @provider = provider
      @user = find_user

      return user_persisted if @user.persisted?
      user_not_persisted
    end

    def find_user
      @user ||= User.from_omniauth(request.env['omniauth.auth'])
    end

    def user_not_persisted
      session["devise.#{@provider}_data"] = request.env['omniauth.auth']
      redirect_to root_url
    end

    def user_persisted
      sign_in_and_redirect root_path, event: :authentication
      set_flash_message(:notice, :success, kind: @provider.capitalize) if is_navigational_format?
    end
  end
end
