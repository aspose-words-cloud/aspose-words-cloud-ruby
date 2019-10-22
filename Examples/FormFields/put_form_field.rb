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

  # Creating form field
  def put_form_field
    filename = 'test_multi_pages.docx'
    dest_name = 'TestPutFormField.docx'
    body = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true,
                                     :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => '123',
                                    :TextInputFormat => 'UPPERCASE'})
    # File is save at the root of the storage
    folder = nil

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PutFormFieldRequest.new filename, body, folder, nil, nil, nil, dest_name, nil, nil, 'sections/0/paragraphs/0', nil
    result = @words_api.put_form_field request
  end

end

document = Document.new()
puts document.put_form_field