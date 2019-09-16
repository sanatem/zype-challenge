module Api
  class Zype

    ZYPE_API = ENV['ZYPE_API']
    ZYPE_API_KEY = ENV['ZYPE_API_KEY']

    def initialize
      @client = Faraday.new do |builder|
        # builder.use :http_cache, store: Rails.cache, logger: ActiveSupport::Logger.new(STDOUT)
        builder.adapter Faraday.default_adapter
        builder.response :json, content_type: /\bjson$/
        # builder.use Faraday::OverrideCacheControl, cache_control: 'public, max-age=3600'
      end
    end

    def index
      connection("#{ZYPE_API}/videos?app_key=#{ZYPE_API_KEY}")
    end

    def show(id)
      connection("#{ZYPE_API}/videos/#{id}?app_key=#{ZYPE_API_KEY}")
    end

    private

    def connection(url)
      response = @client.get(url)
      status = response['status'].to_s
      # return fail ::Zype::StandardError, 'Request Error' unless status == '200'
      response.body['response']
    end

  end
end
