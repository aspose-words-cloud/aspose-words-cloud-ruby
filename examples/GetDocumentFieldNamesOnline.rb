AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetDocumentFieldNamesOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, true)
@words_api.get_document_field_names_online(request)