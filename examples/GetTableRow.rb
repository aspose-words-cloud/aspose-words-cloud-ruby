AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetTableRowRequest.new(name: 'Sample.docx', table_path: 'tables/1', index: 0)
@words_api.get_table_row(request)