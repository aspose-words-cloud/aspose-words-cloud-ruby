AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetFormFieldRequest.new(name: 'Sample.docx', index: 0)
@words_api.get_form_field(request)