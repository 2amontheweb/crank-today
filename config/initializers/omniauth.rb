OmniAuth.config.on_failure = Proc.new do |env|
  env['devise.mapping'] = Devise.mappings[:user]
end
