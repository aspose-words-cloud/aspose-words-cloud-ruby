AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_file_content = File.open('Sample.docx')
upload_request = UploadFileRequest.new(file_content: request_file_content, path: 'Sample.docx')
@words_api.upload_file(upload_request)