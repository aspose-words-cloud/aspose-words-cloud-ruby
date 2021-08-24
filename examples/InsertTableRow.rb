AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_row = TableRowInsert.new({:ColumnsCount => 5})
insert_request = InsertTableRowRequest.new(name: 'Sample.docx', table_path: 'sections/0/tables/2', row: request_row)
@words_api.insert_table_row(insert_request)