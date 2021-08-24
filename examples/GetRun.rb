AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetRunRequest.new(name: 'Sample.docx', paragraph_path: 'paragraphs/0', index: 0)
@words_api.get_run(request)