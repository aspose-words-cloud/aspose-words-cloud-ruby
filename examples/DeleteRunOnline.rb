AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
delete_request = DeleteRunOnlineRequest.new(document: request_document, paragraph_path: 'paragraphs/1', index: 0)
@words_api.delete_run_online(delete_request)