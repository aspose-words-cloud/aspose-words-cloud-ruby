AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteFormFieldRequest.new(name: 'Sample.docx', index: 0)
@words_api.delete_form_field(delete_request)