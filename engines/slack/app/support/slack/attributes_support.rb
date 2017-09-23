module Slack
  class AttributesSupport
    class << self
      def team(attrs, keys: ::Team::OMNIAUTH_ATTRIBUTES)
        return {} if attrs.blank?
        team = access_attrs(attrs, :extra, :team_info, :team)
        icon = access_attrs(team, :icon)
        reduce_data([team, icon], keys: keys)
      end

      def user(attrs = nil, keys: ::User::OMNIAUTH_ATTRIBUTES)
        return {} if attrs.blank?
        info = access_attrs(attrs, :info)
        user = access_attrs(attrs, :extra, :user_info, :user)
        profile = access_attrs(user, :profile)
        reduce_data([info, user, profile], keys: keys)
      end

      private

      def access_attrs(hash = {}, *attrs)
        hash.with_indifferent_access.dig(*attrs)&.compact
      end

      def reduce_data(hashes = [], keys: [])
        hashes.compact.reduce({}, :merge).with_indifferent_access.slice(*keys)
      end
    end
  end
end
