AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_run = RunInsert.new({:Text => 'run with text'})
insert_request = InsertRunOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Runs/Run.doc')), 'paragraphs/1', request_run, nil, nil, nil, nil, nil, nil)
@words_api.insert_run_online(insert_request)