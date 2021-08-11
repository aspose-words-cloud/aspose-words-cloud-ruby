AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteFormFieldOnlineRequest.new(File.open(File.join(documents_dir, '/FormFilled.docx')), 0, 'sections/0', nil, nil, nil, nil, nil)
@words_api.delete_form_field_online(delete_request)