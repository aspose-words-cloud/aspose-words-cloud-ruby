AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteTableRowOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'tables/1', 0, nil, nil, nil, nil, nil)
@words_api.delete_table_row_online(delete_request)