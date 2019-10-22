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

  # Updating paragraph font
  def post_document_paragraph_run_font
    filename = 'test_multi_pages.docx'
    index = 0
    dest_name = 'TestPostDocumentParagraphRunFont.docx'
    font_dto = Font.new({:Bold => true})
    folder = nil # Source document is saved at the root of the storage

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PostDocumentParagraphRunFontRequest.new filename, font_dto, 'paragraphs/0', index, folder, :dest_file_name => dest_name
    result = @words_api.post_document_paragraph_run_font request
  end

end

document = Document.new()
puts document.post_document_paragraph_run_font