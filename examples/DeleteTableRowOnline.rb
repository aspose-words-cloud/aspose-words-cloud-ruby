AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
delete_request = DeleteTableRowOnlineRequest.new(document: request_document, table_path: 'tables/1', index: 0)
@words_api.delete_table_row_online(delete_request)