AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetTableRowFormatRequest.new(name: 'Sample.docx', table_path: 'sections/0/tables/2', index: 0)
@words_api.get_table_row_format(request)