class Message < ApplicationRecord
  #-------------------
  # ASSOCIATIONS
  #-------------------
  belongs_to :user

  #-------------------
  # SCOPES
  #-------------------
  scope :todays, -> { where(created_at: Date.current) }
  scope :for_today, -> { todays.first_or_initialize }

  #-------------------
  # VALIDATIONS
  #-------------------
  validates :user_id, presence: true

  #-------------------
  # INSTANCE METHODS
  #-------------------
  def append!(new_text = '')
    new_text.prepend(text) unless text.blank? || reset?
    update!(reset: false, text: new_text)
    text
  end

  def crank_text
    return 'Not CRANKing yet!' if text.blank?
    text
  end

  def reset!
    update!(reset: true)
  end

  def text
    return '' if reset
    super
  end
end
