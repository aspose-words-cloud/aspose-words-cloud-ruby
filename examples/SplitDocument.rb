AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
split_request = SplitDocumentRequest.new(name: 'Sample.docx', format: 'text', dest_file_name: '/TestSplitDocument.text', from: 1, to: 2)
@words_api.split_document(split_request)