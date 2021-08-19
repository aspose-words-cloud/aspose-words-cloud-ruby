require 'aspose_words_cloud'

AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
file_name = 'test_doc.docx'

# Upload original document to cloud storage.
my_var1 = File.open(file_name)
my_var2 = file_name
upload_file_request = UploadFileRequest.new(my_var1, my_var2, nil)
@words_api.upload_file(upload_file_request)

# Calls AcceptAllRevisions method for document in cloud.
my_var3 = file_name
request = AcceptAllRevisionsRequest.new(my_var3, nil, nil, nil, nil, nil)
@words_api.accept_all_revisions(request)