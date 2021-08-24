AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetFormFieldsRequest.new(name: 'Sample.docx')
@words_api.get_form_fields(request)