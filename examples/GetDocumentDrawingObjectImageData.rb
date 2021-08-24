AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetDocumentDrawingObjectImageDataRequest.new(name: 'Sample.docx', index: 0)
@words_api.get_document_drawing_object_image_data(request)