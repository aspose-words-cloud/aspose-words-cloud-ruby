AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteFieldOnlineRequest.new(File.open(File.join(documents_dir, '/GetField.docx')), 0, 'sections/0/paragraphs/0', nil, nil, nil, nil, nil)
@words_api.delete_field_online(delete_request)