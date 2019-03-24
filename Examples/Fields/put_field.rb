require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  # Get App key and App SID from https://dashboard.aspose.cloud/
  APP_KEY = ""
  APP_SID = ""
  FILE_PATH = "../../TestData/DocumentElements/Fields/"

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

  # Inserting Document Field
  def put_field
    filename = 'GetField.docx'
    body = Field.new({:Result => 3, :FieldCode => '{ NUMPAGES }', :NodeId => '0.0.3'})
    folder = nil
    
    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PutFieldRequest.new filename, body, folder, :node_path => 'sections/0/paragraphs/0'
    result = @words_api.put_field request
  end

end

document = Document.new()
puts document.put_field