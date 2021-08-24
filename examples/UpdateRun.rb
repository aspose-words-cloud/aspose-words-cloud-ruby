AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_run = RunUpdate.new({:Text => 'run with text'})
update_request = UpdateRunRequest.new(name: 'Sample.docx', paragraph_path: 'paragraphs/1', index: 0, run: request_run)
@words_api.update_run(update_request)