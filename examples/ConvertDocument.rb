AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
convert_request = ConvertDocumentRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'pdf', nil, nil, nil, nil)
@words_api.convert_document(convert_request)