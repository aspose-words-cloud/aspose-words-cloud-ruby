AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request_run = RunUpdate.new({:Text => 'run with text'})
update_request = UpdateRunOnlineRequest.new(document: request_document, paragraph_path: 'paragraphs/1', run: request_run, index: 0)
@words_api.update_run_online(update_request)