AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteTableOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 1, '', nil, nil, nil, nil, nil)
@words_api.delete_table_online(delete_request)