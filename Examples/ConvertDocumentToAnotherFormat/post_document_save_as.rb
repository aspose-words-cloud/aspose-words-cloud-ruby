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

  # Saving document with specified format
  def post_document_save_as
    filename = 'test_multi_pages.docx'
    dest_name = 'TestPostDocumentSaveAs.pdf'
    save_options = SaveOptionsData.new({:SaveFormat => 'pdf', :FileName => dest_name})

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PostDocumentSaveAsRequest.new filename, save_options
    result = @words_api.post_document_save_as request
  end

end

document = Document.new()
puts document.post_document_save_as