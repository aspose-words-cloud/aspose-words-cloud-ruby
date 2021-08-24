AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_cell = TableCellInsert.new({})
insert_request = InsertTableCellOnlineRequest.new(document: request_document, table_row_path: 'sections/0/tables/2/rows/0', cell: request_cell)
@words_api.insert_table_cell_online(insert_request)