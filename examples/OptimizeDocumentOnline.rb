AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_options = OptimizationOptions.new({:MsWordVersion => 'Word2002'})
optimize_request = OptimizeDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_options, nil, nil, nil, nil, nil)
@words_api.optimize_document_online(optimize_request)