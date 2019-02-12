require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  def initialize
    # Get App key and App SID from https://dashboard.aspose.cloud/
    AsposeWordsCloud.configure do |config|
      config.api_key['api_key'] = ''
      config.api_key['app_sid'] = ''
    end
    @words_api = WordsApi.new
    
    AsposeStorageCloud.configure do |config|
      config.api_key['api_key'] = ''
      config.api_key['app_sid'] = ''
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

  # Split Document
  def split_all_pages_to_new_pdfs
    filename = 'test_multi_pages.docx'
    format = 'pdf'
    from = nil # Splitting starts from the first page of the document
    to = nil # Splitting ends at the last page of the document
    folder = nil # Input file exists at the root of the storage
    dest_name = nil

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PostSplitDocumentRequest.new filename, folder, nil, nil, nil, dest_name, format, from, to
    result = @words_api.post_split_document request
  end

end

document = Document.new()
puts document.split_all_pages_to_new_pdfs