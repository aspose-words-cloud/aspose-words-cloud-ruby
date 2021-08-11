AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetDocumentPropertyOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'Author', nil, nil)
@words_api.get_document_property_online(request)