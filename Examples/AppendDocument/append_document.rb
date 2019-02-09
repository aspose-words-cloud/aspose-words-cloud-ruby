require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeWordsCloud.configure do |config|
      config.api_key['api_key'] = 'da77c9f5da014d91faf2961ecec2de66'
      config.api_key['app_sid'] = 'B01A15E5-1B83-4B9A-8EB3-0F2BFA6AC766'
    end
    @words_api = WordsApi.new
    
    AsposeStorageCloud.configure do |config|
      config.api_key['api_key'] = 'da77c9f5da014d91faf2961ecec2de66'
      config.api_key['app_sid'] = 'B01A15E5-1B83-4B9A-8EB3-0F2BFA6AC766'
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

  # Read document bookmark data by its name.
  def append_document
    filename = 'test_doc.docx'
    document_to_append = 'test_multi_pages.docx'
    dest_name = nil
      
    # Upload source document to Cloud Storage
    upload_file(filename)

    # Upload document to append to Cloud Storage
    upload_file(document_to_append)

    doc_entry = DocumentEntry.new({:Href => document_to_append, :ImportFormatMode => "KeepSourceFormatting"})
    body = DocumentEntryList.new({:DocumentEntries => [doc_entry]})

    request = PostAppendDocumentRequest.new filename, body, :folder => nil, :dest_file_name => dest_name
    result = @words_api.post_append_document request
  end

end

document = Document.new()
puts document.append_document