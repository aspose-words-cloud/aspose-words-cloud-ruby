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

  # Inserting watermark image
  def insert_document_watermark_image
    filename = 'test_multi_pages.docx'
    dest_name = 'TestPostInsertDocumentWatermarkImage.docx'
    rotation_angle = 0
    image = File.open(FILE_PATH + 'aspose-cloud.png', 'r')
    folder = nil # Source document is saved at the root of the storage

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PostInsertDocumentWatermarkImageRequest.new filename, image, folder, nil, nil, nil, dest_name, nil, nil, rotation_angle
    result = @words_api.post_insert_document_watermark_image request
  end

end

document = Document.new()
puts document.insert_document_watermark_image