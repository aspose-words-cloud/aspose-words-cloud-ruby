AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteRunRequest.new(name: 'Sample.docx', paragraph_path: 'paragraphs/1', index: 0)
@words_api.delete_run(delete_request)