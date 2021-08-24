AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
remove_request = RemoveRangeOnlineRequest.new(document: request_document, range_start_identifier: 'id0.0.0', range_end_identifier: 'id0.0.1')
@words_api.remove_range_online(remove_request)