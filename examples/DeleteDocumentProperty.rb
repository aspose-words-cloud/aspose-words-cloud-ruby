AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'

delete_request = DeleteDocumentPropertyRequest.new(remote_file_name, 'testProp', nil, nil, nil, nil, remote_file_name, nil, nil)
@words_api.delete_document_property(delete_request)