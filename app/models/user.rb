class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable,
         :validatable, :omniauthable, omniauth_providers: [:slack]

  #-------------------
  # CONSTANTS
  #-------------------
  OMNIAUTH_ATTRIBUTES = %i[color email first_name image_24 image_32 image_48 image_72 image_192
                           image_512 is_admin is_app_user is_bot is_owner is_primary_owner
                           is_restricted is_ultra_restricted last_name nickname name real_name
                           provider time_zone uid].freeze

  #-------------------
  # ASSOCIATIONS
  #-------------------
  belongs_to :team

  has_many :messages, dependent: :delete_all

  has_one :message, -> { todays }

  #-------------------
  # DELEGATES
  #-------------------
  delegate :crank_text, to: :message, allow_nil: true
  delegate :digest, to: :team, allow_nil: true, prefix: true

  #-------------------
  # SCOPES
  #-------------------
  scope :with_message, -> { joins(:message) }

  #-------------------
  # VALIDATIONS
  #-------------------
  validates :provider, :uid, presence: true

  #-------------------
  # CLASS METHODS
  #-------------------
  def self.from_omniauth(auth)
    team = Team.from_omniauth(auth)

    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      attrs = ::Slack::AttributesSupport.user(auth)
      attrs[:password] = Devise.friendly_token[0, 20] if user.password.blank?
      attrs[:team] = team if team.present?
      user.assign_attributes(attrs)
    end
  end
end
