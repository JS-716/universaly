DeepL.configure do |config|
  config.auth_key = ENV.fetch('DEEPL_AUTH_KEY')
end
