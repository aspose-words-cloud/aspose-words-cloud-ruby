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
    file = File.read("../../TestData/DocumentActions/CompareDocument/" << file_name)
    version_id = nil
    storage = nil
    request = PutCreateRequest.new(file_name, file, version_id, storage)

    response = @storage_api.put_create(request)
  end

  # Document Comparison
  def compare_document
    file_name1 = "compareTestDoc1.doc"
    file_name2 = "compareTestDoc2.doc"
    dest_name = 'TestCompareOut.doc'
    folder = nil # File save at the root of the storage
    compare_data = CompareData.new({
                                     :Author => 'author',
                                     :ComparingWithDocument => file_name2,
                                     :DateTime => DateTime.new})
    
    # Upload source document to Cloud Storage
    upload_file(file_name1)

    # Upload source document to Cloud Storage
    upload_file(file_name2)    

    request = PostCompareDocumentRequest.new file_name1, compare_data, folder, :dest_file_name => dest_name
    result = @words_api.post_compare_document request
  end

end

document = Document.new()
puts document.compare_document