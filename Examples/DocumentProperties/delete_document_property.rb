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

  # Deleting document property
  def delete_document_property
    filename = 'test_multi_pages.docx'
    dest_name = 'TestDeleteDocumentProperty.docx'
    property_name = 'testProp'
    # The path to document on the Cloud Storage. The value is nil because the document at the root.
    folder = nil

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = DeleteDocumentPropertyRequest.new filename, property_name, folder, :dest_file_name => dest_name
    result = @words_api.delete_document_property request
  end

end

document = Document.new()
puts document.delete_document_property