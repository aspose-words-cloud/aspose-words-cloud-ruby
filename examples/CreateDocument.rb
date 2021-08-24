AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
create_request = CreateDocumentRequest.new(file_name: 'Sample.docx')
@words_api.create_document(create_request)