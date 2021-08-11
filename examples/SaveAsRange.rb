AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document_parameters = RangeDocument.new({:DocumentName => '/NewDoc.docx'})
save_request = SaveAsRangeRequest.new('Sample.docx', 'id0.0.0', request_document_parameters, 'id0.0.1', nil, nil, nil, nil)
@words_api.save_as_range(save_request)