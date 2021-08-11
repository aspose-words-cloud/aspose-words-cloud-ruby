AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
split_request = SplitDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'text', nil, nil, '/TestSplitDocument.text', 1, 2, nil, nil)
@words_api.split_document_online(split_request)