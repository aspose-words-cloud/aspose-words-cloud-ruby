AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request = GetHeaderFooterOnlineRequest.new(document: request_document, header_footer_index: 0)
@words_api.get_header_footer_online(request)