AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_table = TableInsert.new({:ColumnsCount => 5, :RowsCount => 4})
insert_request = InsertTableRequest.new(name: 'Sample.docx', table: request_table)
@words_api.insert_table(insert_request)