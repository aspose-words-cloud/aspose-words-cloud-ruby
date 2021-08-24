AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request_document_parameters = RangeDocument.new({:DocumentName => '/NewDoc.docx'})
save_request = SaveAsRangeOnlineRequest.new(document: request_document, range_start_identifier: 'id0.0.0', document_parameters: request_document_parameters, range_end_identifier: 'id0.0.1')
@words_api.save_as_range_online(save_request)