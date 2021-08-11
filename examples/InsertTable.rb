AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_table = TableInsert.new({:ColumnsCount => 5, :RowsCount => 4})
insert_request = InsertTableRequest.new('Sample.docx', request_table, nil, nil, nil, nil, nil, nil, nil, nil)
@words_api.insert_table(insert_request)