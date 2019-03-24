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

  # Split Document
  def split_specific_pages_to_pngs
    filename = 'test_multi_pages.docx'
    format = 'png'
    from = 1 # Splitting starts from the first page of the document
    to = 2 # Splitting ends at the last page of the document
    folder = nil # Input file exists at the root of the storage
    zip_output = true
    dest_name = "test_multi_pages.zip"

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PostSplitDocumentRequest.new filename, folder, nil, nil, nil, dest_name, format, from, to, zip_output
    result = @words_api.post_split_document request
  end

end

document = Document.new()
puts document.split_specific_pages_to_pngs