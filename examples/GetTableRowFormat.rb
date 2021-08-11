AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetTableRowFormatRequest.new('Sample.docx', 'sections/0/tables/2', 0, nil, nil, nil, nil)
@words_api.get_table_row_format(request)