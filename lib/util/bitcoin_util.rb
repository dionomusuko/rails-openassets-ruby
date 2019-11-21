require "openassets"
module BitcoinUtil
  class << self
    def api
      @@api ||= OpenAssets::Api.new(config)
    end
    def provider
      api.provider
    end
    def config
      YAML.load_file("#{Rails.root}/config/openassets.yml")[Rails.env].deep_symbolize_keys
    end
    def reload
      @@api = nil
    end
  end
end