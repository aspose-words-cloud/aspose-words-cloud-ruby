AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetRunOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'paragraphs/0', 0, nil, nil)
@words_api.get_run_online(request)