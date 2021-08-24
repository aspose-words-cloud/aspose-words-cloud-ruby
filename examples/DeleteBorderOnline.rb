AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
delete_request = DeleteBorderOnlineRequest.new(document: request_document, border_type: 'left', node_path: 'tables/1/rows/0/cells/0')
@words_api.delete_border_online(delete_request)