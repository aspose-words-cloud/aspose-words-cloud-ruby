AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetDocumentDrawingObjectOleDataRequest.new(name: 'Sample.docx', index: 0)
@words_api.get_document_drawing_object_ole_data(request)