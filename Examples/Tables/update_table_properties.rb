require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  # Get App key and App SID from https://dashboard.aspose.cloud/
  APP_KEY = ""
  APP_SID = ""
  FILE_PATH = "../../TestData/DocumentElements/Tables/"

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

  # Updating table properties
  def update_table_properties
    filename = 'TablesGet.docx'
    index = 1
    props = TableProperties.new({:Alignment => 'Right', :AllowAutoFit => false, :Bidi => true, :BottomPadding => 1,
                                  :CellSpacing => 2, :LeftIndent => 3, :LeftPadding => 4, :RightPadding => 5,
                                   :StyleOptions => 'ColumnBands', :TopPadding => 6})
    folder = nil # Source document is saved at the root of the storage

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = UpdateTablePropertiesRequest.new filename, index, folder, :properties => props
    result = @words_api.update_table_properties request
  end

end

document = Document.new()
puts document.update_table_properties