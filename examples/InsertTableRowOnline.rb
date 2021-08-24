AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_row = TableRowInsert.new({:ColumnsCount => 5})
insert_request = InsertTableRowOnlineRequest.new(document: request_document, table_path: 'sections/0/tables/2', row: request_row)
@words_api.insert_table_row_online(insert_request)