AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
delete_request = DeleteHeaderFooterOnlineRequest.new(document: request_document, section_path: '', index: 0)
@words_api.delete_header_footer_online(delete_request)