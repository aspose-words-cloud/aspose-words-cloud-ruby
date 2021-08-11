AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetFormFieldOnlineRequest.new(File.open(File.join(documents_dir, '/FormFilled.docx')), 0, 'sections/0', nil, nil)
@words_api.get_form_field_online(request)