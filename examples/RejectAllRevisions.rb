AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
reject_request = RejectAllRevisionsRequest.new('Sample.docx', nil, nil, nil, nil, nil)
@words_api.reject_all_revisions(reject_request)