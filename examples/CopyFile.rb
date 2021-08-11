AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
copy_request = CopyFileRequest.new('/TestCopyFileDest.docx', 'Sample.docx', nil, nil, nil)
@words_api.copy_file(copy_request)