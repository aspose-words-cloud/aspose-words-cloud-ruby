AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_options = OptimizationOptions.new({:MsWordVersion => 'Word2002'})
optimize_request = OptimizeDocumentOnlineRequest.new(document: request_document, options: request_options)
@words_api.optimize_document_online(optimize_request)