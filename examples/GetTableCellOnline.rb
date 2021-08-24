AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request = GetTableCellOnlineRequest.new(document: request_document, table_row_path: 'sections/0/tables/2/rows/0', index: 0)
@words_api.get_table_cell_online(request)