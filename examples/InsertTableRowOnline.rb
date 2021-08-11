AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_row = TableRowInsert.new({:ColumnsCount => 5})
insert_request = InsertTableRowOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/tables/2', request_row, nil, nil, nil, nil, nil)
@words_api.insert_table_row_online(insert_request)