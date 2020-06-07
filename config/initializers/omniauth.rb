Rails.application.config.middleware.use OmniAuth::Builder do
  :client_id   => ENV['4e158d9388c49b40ce57'],
  :client_secret => ENV['66f65506bbd6c3db6a0a9df2fa1a7396f05a8ad0']
  provider :github, Rails.application.credentials.github[:client_id], Rails.application.credentials.github[:client_secret]

end
