AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetDocumentDrawingObjectByIndexOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, 'sections/0', nil, nil)
@words_api.get_document_drawing_object_by_index_online(request)