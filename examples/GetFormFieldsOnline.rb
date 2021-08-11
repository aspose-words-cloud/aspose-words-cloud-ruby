AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetFormFieldsOnlineRequest.new(File.open(File.join(documents_dir, '/FormFilled.docx')), 'sections/0', nil, nil)
@words_api.get_form_fields_online(request)