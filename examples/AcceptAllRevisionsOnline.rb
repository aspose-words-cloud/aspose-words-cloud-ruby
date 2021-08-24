AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
accept_request = AcceptAllRevisionsOnlineRequest.new(document: request_document)
@words_api.accept_all_revisions_online(accept_request)