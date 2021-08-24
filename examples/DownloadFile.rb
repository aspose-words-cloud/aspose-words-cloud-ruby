AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
download_request = DownloadFileRequest.new(path: 'Sample.docx')
@words_api.download_file(download_request)