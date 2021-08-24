AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteHeadersFootersRequest.new(name: 'Sample.docx', section_path: '')
@words_api.delete_headers_footers(delete_request)