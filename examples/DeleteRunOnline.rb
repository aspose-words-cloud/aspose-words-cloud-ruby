AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteRunOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Runs/Run.doc')), 'paragraphs/1', 0, nil, nil, nil, nil, nil)
@words_api.delete_run_online(delete_request)