AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetDocumentPropertiesOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil)
@words_api.get_document_properties_online(request)