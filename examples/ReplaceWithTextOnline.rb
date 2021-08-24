AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request_range_text = ReplaceRange.new({:Text => 'Replaced header'})
replace_request = ReplaceWithTextOnlineRequest.new(document: request_document, range_start_identifier: 'id0.0.0', range_text: request_range_text, range_end_identifier: 'id0.0.1')
@words_api.replace_with_text_online(replace_request)