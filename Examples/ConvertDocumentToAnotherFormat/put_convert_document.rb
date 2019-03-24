require 'aspose_words_cloud'

class Document

  include AsposeWordsCloud

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
  end

  # Convert Document without Storage
  def put_convert_document
    filename = 'test_multi_pages.docx'
    format = 'pdf'
    
    request = PutConvertDocumentRequest.new(File.open(FILE_PATH  + filename, "r"), format)
    result = @words_api.put_convert_document request
  end

end

document = Document.new()
puts document.put_convert_document