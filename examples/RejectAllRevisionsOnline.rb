AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
reject_request = RejectAllRevisionsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, nil)
@words_api.reject_all_revisions_online(reject_request)