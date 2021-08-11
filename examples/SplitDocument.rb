AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
split_request = SplitDocumentRequest.new('Sample.docx', 'text', nil, nil, nil, nil, '/TestSplitDocument.text', 1, 2, nil, nil)
@words_api.split_document(split_request)