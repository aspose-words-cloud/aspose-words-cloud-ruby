AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_table = TableInsert.new({:ColumnsCount => 5, :RowsCount => 4})
insert_request = InsertTableOnlineRequest.new(document: request_document, table: request_table)
@words_api.insert_table_online(insert_request)