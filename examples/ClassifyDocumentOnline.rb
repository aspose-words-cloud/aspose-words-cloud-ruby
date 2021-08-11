AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
classify_request = ClassifyDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, '3', nil)
@words_api.classify_document_online(classify_request)