AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_cell = TableCellInsert.new({})
insert_request = InsertTableCellRequest.new('Sample.docx', 'sections/0/tables/2/rows/0', request_cell, nil, nil, nil, nil, nil, nil, nil)
@words_api.insert_table_cell(insert_request)