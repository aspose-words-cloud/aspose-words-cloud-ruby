AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
upload_request = UploadFileRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'Sample.docx', nil)
@words_api.upload_file(upload_request)