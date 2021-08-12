AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_document_parameters = RangeDocument.new({:DocumentName => '/NewDoc.docx'})
save_request = SaveAsRangeOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.doc')), 'id0.0.0', request_document_parameters, 'id0.0.1', nil, nil)
@words_api.save_as_range_online(save_request)