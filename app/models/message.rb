class Message < ApplicationRecord
  #-------------------
  # ASSOCIATIONS
  #-------------------
  belongs_to :user

  #-------------------
  # VALIDATIONS
  #-------------------
  validates :text, :user_id, presence: true

  #-------------------
  # VALIDATIONS
  #-------------------
  scope :todays, -> { where(created_at: Date.current) }
  scope :for_today, -> { todays.first_or_initialize }

  #-------------------
  # INSTANCE METHODS
  #-------------------
  def append!(new_text = '')
    update!(text: new_text) if text.blank?
    update!(text: text << new_text)
    text
  end
end
