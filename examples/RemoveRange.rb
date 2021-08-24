AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remove_request = RemoveRangeRequest.new(name: 'Sample.docx', range_start_identifier: 'id0.0.0', range_end_identifier: 'id0.0.1')
@words_api.remove_range(remove_request)