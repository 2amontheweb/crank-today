class Team < ApplicationRecord
  #-------------------
  # CONSTANTS
  #-------------------
  OMNIAUTH_ATTRIBUTES = %i[domain email_domain image_34 image_44 image_68 image_88 image_102
                           image_132 image_230 name uid].freeze

  #-------------------
  # ASSOCIATIONS
  #-------------------
  has_many :users, dependent: :delete_all

  #-------------------
  # VALIDATIONS
  #-------------------
  validates :uid, presence: true

  #-------------------
  # INSTANCE METHODS
  #-------------------
  def digest
    ::DigestSupport.build(users: users.with_message)
  end

  #-------------------
  # CLASS METHODS
  #-------------------
  def self.from_omniauth(auth = {}, team_uid = nil)
    team_uid ||= auth.dig(:extra, :team_info, :team, :id)

    return if team_uid.blank?

    where(uid: team_uid).first_or_create do |team|
      attrs = ::Slack::AttributesSupport.team(auth)
      team.assign_attributes(attrs)
    end
  end
end
