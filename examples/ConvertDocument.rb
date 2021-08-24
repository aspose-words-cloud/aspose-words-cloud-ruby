AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
convert_request = ConvertDocumentRequest.new(document: request_document, format: 'pdf')
@words_api.convert_document(convert_request)