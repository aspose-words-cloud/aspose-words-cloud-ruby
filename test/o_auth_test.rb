module RubySDK
  require "minitest/autorun"
  require "minitest/unit"
  require_relative '../lib/api/words_api'
  require_relative '../lib/configuration'
  require_relative '../lib/api_client'
  require 'aspose_storage_cloud'
  class OAuthTest < Minitest::Test
    include AsposeStorageCloud
    include MiniTest::Assertions
    def setup
      @config = Configuration.new
      @config.api_key['app_key'] = ''
      @config.api_key['app_sid'] = ''
      @api_client = ApiClient.new @config
      @words_api = WordsApi.new @api_client
      @storage_api = StorageApi.new @words_api.api_client
    end


    def test_oauth
      @words_api.request_token
      assert(@config.access_token == nil , "error while getting token")
    end
  end
end
