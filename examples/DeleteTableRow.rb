AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteTableRowRequest.new(name: 'Sample.docx', table_path: 'tables/1', index: 0)
@words_api.delete_table_row(delete_request)