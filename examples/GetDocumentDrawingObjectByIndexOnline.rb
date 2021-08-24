AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request = GetDocumentDrawingObjectByIndexOnlineRequest.new(document: request_document, index: 0, node_path: 'sections/0')
@words_api.get_document_drawing_object_by_index_online(request)