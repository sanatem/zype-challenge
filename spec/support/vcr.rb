VCR.configure do |config|
  config.cassette_library_dir = "#{Rails.root}/spec/vcr_cassettes"
  config.hook_into :webmock
  config.ignore_localhost = true
  config.allow_http_connections_when_no_cassette = true
end

RSpec.configure do |c|
  c.around(:each, vcr: true) do |example|
    name = example.metadata[:full_description].split(/\s+/, 2).join('/').underscore.gsub(/[^\w\/]+/, '_')
    VCR.use_cassette(name, record: :new_episodes, match_requests_on: %i(method host path)) { example.call }
  end
end
