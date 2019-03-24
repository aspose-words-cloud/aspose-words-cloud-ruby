require 'aspose_words_cloud'

class Document

  include AsposeWordsCloud

  def initialize
    # Get App key and App SID from https://dashboard.aspose.cloud/
    AsposeWordsCloud.configure do |config|
      config.api_key['api_key'] = ''
      config.api_key['app_sid'] = ''
    end
    @words_api = WordsApi.new
  end

  # Create a new Word Document
  def create_document
    filename = 'NewDocument.docx'
    folder = 'Word Documents'
    storage = 'Default Storage'

    request = PutCreateDocumentRequest.new storage, filename, folder
    result = @words_api.put_create_document request
  end

end

document = Document.new()
puts document.create_document