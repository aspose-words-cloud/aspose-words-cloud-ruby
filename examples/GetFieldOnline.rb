AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetFieldOnlineRequest.new(File.open(File.join(documents_dir, '/GetField.docx')), 0, 'sections/0/paragraphs/0', nil, nil)
@words_api.get_field_online(request)