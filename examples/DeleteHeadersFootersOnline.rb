AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteHeadersFootersOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/HeaderFooters/HeadersFooters.doc')), '', nil, nil, nil, nil, nil, nil)
@words_api.delete_headers_footers_online(delete_request)