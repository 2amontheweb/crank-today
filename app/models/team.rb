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
  # CLASS METHODS
  #-------------------
  def self.from_omniauth(auth)
    where(uid: auth.uid).first_or_create do |team|
      attrs = ::Slack::AttributesSupport.team(auth)
      team.assign_attributes(attrs)
    end
  end
end
