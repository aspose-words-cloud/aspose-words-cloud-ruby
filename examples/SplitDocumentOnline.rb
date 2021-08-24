AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
split_request = SplitDocumentOnlineRequest.new(document: request_document, format: 'text', dest_file_name: '/TestSplitDocument.text', from: 1, to: 2)
@words_api.split_document_online(split_request)