require 'aspose_words_cloud'

AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
file_name = 'test_doc.docx'

# Upload original document to cloud storage.
upload_file_request = UploadFileRequest.new(File.open(File.join(documents_dir, file_name)), file_name, nil)
@words_api.upload_file(upload_file_request)

# Calls AcceptAllRevisions method for document in cloud.
request = AcceptAllRevisionsRequest.new(file_name, nil, nil, nil, nil, nil)
@words_api.accept_all_revisions(request)