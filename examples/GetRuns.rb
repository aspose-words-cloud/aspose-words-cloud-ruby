AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetRunsRequest.new(name: 'Sample.docx', paragraph_path: 'sections/0/paragraphs/0')
@words_api.get_runs(request)