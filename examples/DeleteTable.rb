AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteTableRequest.new(name: 'Sample.docx', index: 1)
@words_api.delete_table(delete_request)