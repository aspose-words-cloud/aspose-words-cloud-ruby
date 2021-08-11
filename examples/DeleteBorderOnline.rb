AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteBorderOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'left', 'tables/1/rows/0/cells/0', nil, nil, nil, nil, nil)
@words_api.delete_border_online(delete_request)