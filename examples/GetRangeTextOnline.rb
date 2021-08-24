AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request = GetRangeTextOnlineRequest.new(document: request_document, range_start_identifier: 'id0.0.0', range_end_identifier: 'id0.0.1')
@words_api.get_range_text_online(request)