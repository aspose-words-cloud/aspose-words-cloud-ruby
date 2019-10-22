require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  # Get App key and App SID from https://dashboard.aspose.cloud/
  APP_KEY = ""
  APP_SID = ""
  FILE_PATH = "../../TestData/DocumentActions/ConvertDocument/"

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

  # Saving document with specified format
  def put_document_save_as_tiff
    filename = '45.pdf'
    dest_name = 'TestPostDocumentSaveAsTiff.tiff'
    save_options = TiffSaveOptionsData.new({:SaveFormat => 'tiff', :FileName => dest_name})
    folder = nil # File save at the root of the storage

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PutDocumentSaveAsTiffRequest.new filename, save_options, folder, :dest_file_name => dest_name
    result = @words_api.put_document_save_as_tiff request
  end

end

document = Document.new()
puts document.put_document_save_as_tiff