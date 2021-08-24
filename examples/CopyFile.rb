AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
copy_request = CopyFileRequest.new(dest_path: '/TestCopyFileDest.docx', src_path: 'Sample.docx')
@words_api.copy_file(copy_request)