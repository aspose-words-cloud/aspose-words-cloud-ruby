require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  # Get App key and App SID from https://dashboard.aspose.cloud/
  APP_KEY = ""
  APP_SID = ""

  def initialize
    # Get App key and App SID from https://dashboard.aspose.cloud/
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

  # Updating document bookmark
  def post_update_document_bookmark
    filename = 'test_multi_pages.docx'
    dest_name = 'TestPostUpdateDocumentBookmark.docx'
    bookmark_name = 'aspose'
    body = BookmarkData.new({:Name => bookmark_name, :Text => 'This will be the text for Aspose'})
    folder = nil # File save at the root of the storage

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PostUpdateDocumentBookmarkRequest.new filename, body, bookmark_name, folder, :dest_file_name => dest_name
    result = @words_api.post_update_document_bookmark request
  end

end

document = Document.new()
puts document.post_update_document_bookmark