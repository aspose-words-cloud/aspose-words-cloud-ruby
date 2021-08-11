AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetTablesRequest.new('Sample.docx', nil, nil, nil, nil, nil)
@words_api.get_tables(request)