AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteTableRowRequest.new('Sample.docx', 'tables/1', 0, nil, nil, nil, nil, nil, nil, nil)
@words_api.delete_table_row(delete_request)