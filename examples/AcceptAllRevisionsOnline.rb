AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
file_name = 'test_doc.docx'

# Calls AcceptAllRevisionsOnline method for document in cloud.
request_document = File.open(File.join(documents_dir, file_name))
request = AcceptAllRevisionsOnlineRequest.new(request_document, nil, nil, nil)
accept_all_revisions_online_result = @words_api.accept_all_revisions_online(request)
FileUtils.cp accept_all_revisions_online_result.document.path, 'test_result.docx'