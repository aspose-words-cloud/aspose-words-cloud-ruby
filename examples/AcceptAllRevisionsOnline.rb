AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
file_name= 'test_doc.docx'

# Calls AcceptAllRevisionsOnline method for document in cloud.
request_document = File.open(file_name)
request = AcceptAllRevisionsOnlineRequest.new(document: request_document)
accept_all_revisions_online_result = @words_api.accept_all_revisions_online(request)
File.open('test_result.docx', 'wb').write(accept_all_revisions_online_result.document.values[0])