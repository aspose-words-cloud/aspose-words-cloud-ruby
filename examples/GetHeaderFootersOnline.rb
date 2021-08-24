AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request = GetHeaderFootersOnlineRequest.new(document: request_document, section_path: '')
@words_api.get_header_footers_online(request)