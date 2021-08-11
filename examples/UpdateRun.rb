AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_run = RunUpdate.new({:Text => 'run with text'})
update_request = UpdateRunRequest.new('Sample.docx', 'paragraphs/1', 0, request_run, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_run(update_request)