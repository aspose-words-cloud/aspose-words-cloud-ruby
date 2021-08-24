AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteBorderRequest.new(name: 'Sample.docx', border_type: 'left', node_path: 'tables/1/rows/0/cells/0')
@words_api.delete_border(delete_request)