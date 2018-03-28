#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="base_test_context.rb">
#   Copyright (c) 2018 Aspose.Words for Cloud
# </copyright>
# <summary>
#   Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
# </summary>
# --------------------------------------------------------------------------------------------------------------------
#
module RubySDK
  require "minitest/autorun"
  require "minitest/unit"
  require_relative '../lib/api/words_api'
  require_relative '../lib/configuration'
  require_relative '../lib/api_client'
  require 'aspose_storage_cloud'
  class BaseTestContext < Minitest::Test
    include AsposeStorageCloud
    include MiniTest::Assertions
    def setup
      @config = Configuration.new
      @config.api_key['api_key'] = ''
      @config.api_key['app_sid'] = ''
      @api_client = ApiClient.new @config
      @words_api = WordsApi.new @api_client
      AsposeApp.app_key_and_sid(@config.api_key['api_key'], @config.api_key['app_sid'])
      @storage_api = StorageApi.new
      require_all '../lib/models'
    end

    # requires all files recursively inside a directory from current dir
    # @param _dir can be relative path like '/lib' or "../lib"
    def require_all(_dir)
      Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), _dir)) + "/*.rb"].each do |file|
        require file
      end
    end

    def local_test_folder
      'TestData/'
    end

    def remote_test_folder
      'Temp/SdkTests/ruby/'
    end

    def remote_test_out
      'Temp/SdkTests/ruby/TestOut/'
    end

    def local_common_folder
      'TestData/Common/'
    end
  end
end
