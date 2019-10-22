require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  # Get App key and App SID from https://dashboard.aspose.cloud/
  APP_KEY = ""
  APP_SID = ""

  def initialize
    AsposeWordsCloud.configure do |config|
      config.api_key['api_key'] = APP_KEY
      config.api_key['app_sid'] = APP_SID
    end
    @words_api = WordsApi.new
    
    AsposeStorageCloud.configure do |config|
      config.api_key['api_key'] = APP_KEY
      config.api_key['app_sid'] = APP_SID
    end
    @storage_api = StorageApi.new
  end

  def upload_file(file_name)
    file = File.read("../../TestData/Common/" << file_name)
    version_id = nil
    storage = nil
    request = PutCreateRequest.new(file_name, file, version_id, storage)

    response = @storage_api.put_create(request)
  end

  # Updating page setup
  def update_section_page_setup
    filename = 'test_multi_pages.docx'
    index = 0
    body = PageSetup.new({:RtlGutter => true, :LeftMargin => 10, :Orientation => 'Landscape', :PaperSize => 'A5'})

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = UpdateSectionPageSetupRequest.new filename, index, body
    result = @words_api.update_section_page_setup request
  end

end

document = Document.new()
puts document.update_section_page_setup