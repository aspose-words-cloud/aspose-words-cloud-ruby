AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetDocumentHyperlinkByIndexRequest.new(name: 'Sample.docx', hyperlink_index: 0)
@words_api.get_document_hyperlink_by_index(request)