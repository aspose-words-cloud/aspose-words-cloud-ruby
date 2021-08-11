AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_options = OptimizationOptions.new({:MsWordVersion => 'Word2002'})
optimize_request = OptimizeDocumentRequest.new('Sample.docx', request_options, nil, nil, nil, nil, nil, nil, nil)
@words_api.optimize_document(optimize_request)