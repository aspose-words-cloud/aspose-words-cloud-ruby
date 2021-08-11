AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetRunsRequest.new('Sample.docx', 'sections/0/paragraphs/0', nil, nil, nil, nil)
@words_api.get_runs(request)