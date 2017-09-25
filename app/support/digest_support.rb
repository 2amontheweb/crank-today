class DigestSupport
  class << self
    def build(users: [])
      return 'No messages yet today!' if users.blank?
      str = "Today's Crank Messages:\n"
      users.map do |user|
        str << build_message(user)
      end
      str
    end

    private

    def build_message(user)
      "#{user.real_name || user.name}: #{user.crank_text}\n"
    end
  end
end
