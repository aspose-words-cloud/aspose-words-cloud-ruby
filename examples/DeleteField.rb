AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteFieldRequest.new(name: 'Sample.docx', index: 0)
@words_api.delete_field(delete_request)