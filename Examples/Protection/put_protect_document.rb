require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  # Get App key and App SID from https://dashboard.aspose.cloud/
  APP_KEY = ""
  APP_SID = ""
  FILE_PATH = "../../TestData/Common/"

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
    file = File.read(FILE_PATH << file_name)
    version_id = nil
    storage = nil
    request = PutCreateRequest.new(file_name, file, version_id, storage)

    response = @storage_api.put_create(request)
  end

  # Inserting document protection
  def put_protect_document
    filename = 'test_multi_pages.docx'
    dest_name = 'TestPutProtectDocument.docx'
    body = ProtectionRequest.new({:NewPassword => '123'})
    folder = nil # Source document is saved at the root of the storage

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PutProtectDocumentRequest.new filename, body, folder, nil, nil, nil, :dest_file_name => dest_name
    result = @words_api.put_protect_document request
  end

end

document = Document.new()
puts document.put_protect_document