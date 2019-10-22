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
    file = File.read("../../TestData/DocumentElements/DrawingObjects/" << file_name)
    version_id = nil
    storage = nil
    request = PutCreateRequest.new(file_name, file, version_id, storage)

    response = @storage_api.put_create(request)
  end

  # Getting Drawing Objects
  def get_document_drawing_objects
    filename = 'sample_EmbeddedOLE.docx'
    index = 0
    # File is save at the root of the storage
    folder = nil

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = GetDocumentDrawingObjectsRequest.new filename, folder, :node_path => 'sections/0'
    result = @words_api.get_document_drawing_objects request
  end

end

document = Document.new()
puts document.get_document_drawing_objects