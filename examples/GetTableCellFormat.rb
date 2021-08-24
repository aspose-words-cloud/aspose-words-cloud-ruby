AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetTableCellFormatRequest.new(name: 'Sample.docx', table_row_path: 'sections/0/tables/2/rows/0', index: 0)
@words_api.get_table_cell_format(request)