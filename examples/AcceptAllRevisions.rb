AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
accept_request = AcceptAllRevisionsRequest.new('Sample.docx', nil, nil, nil, nil, nil)
@words_api.accept_all_revisions(accept_request)