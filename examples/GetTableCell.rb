AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetTableCellRequest.new('Sample.docx', 'sections/0/tables/2/rows/0', 0, nil, nil, nil, nil)
@words_api.get_table_cell(request)