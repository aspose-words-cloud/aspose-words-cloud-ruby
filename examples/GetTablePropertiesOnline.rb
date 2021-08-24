AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request = GetTablePropertiesOnlineRequest.new(document: request_document, index: 1)
@words_api.get_table_properties_online(request)