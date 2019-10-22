require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  # Get App key and App SID from https://dashboard.aspose.cloud/
  APP_KEY = ""
  APP_SID = ""

  def initialize
    # Get App key and App SID from https://dashboard.aspose.cloud/
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

  # Updating comment
  def post_comment
    filename = 'test_multi_pages.docx'
    comment_index = 0
    node_link = NodeLink.new({:NodeId => '0.0.3'})
    document_position = DocumentPosition.new({:Node => node_link, :Offset => 0})
    body = Comment.new({:RangeStart => document_position, :RangeEnd => document_position, :Initial => 'YE', :Author => 'Yaroslav Ekimov', :Text => 'A new comment'})

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PostCommentRequest.new filename, comment_index, body
    result = @words_api.post_comment request
  end

end

document = Document.new()
puts document.post_comment