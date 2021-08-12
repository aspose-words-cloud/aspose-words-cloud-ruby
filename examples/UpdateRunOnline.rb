AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_run = RunUpdate.new({:Text => 'run with text'})
update_request = UpdateRunOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.doc')), 'paragraphs/1', request_run, 0, nil, nil, nil, nil, nil)
@words_api.update_run_online(update_request)