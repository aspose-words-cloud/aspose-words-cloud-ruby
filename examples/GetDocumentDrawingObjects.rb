AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetDocumentDrawingObjectsRequest.new('Sample.docx', nil, nil, nil, nil, nil)
@words_api.get_document_drawing_objects(request)