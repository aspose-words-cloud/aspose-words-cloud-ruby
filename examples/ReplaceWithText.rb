AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_range_text = ReplaceRange.new({:Text => 'Replaced header'})
replace_request = ReplaceWithTextRequest.new(name: 'Sample.docx', range_start_identifier: 'id0.0.0', range_text: request_range_text, range_end_identifier: 'id0.0.1')
@words_api.replace_with_text(replace_request)