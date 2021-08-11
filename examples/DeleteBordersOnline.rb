AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteBordersOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'tables/1/rows/0/cells/0', nil, nil, nil, nil, nil)
@words_api.delete_borders_online(delete_request)