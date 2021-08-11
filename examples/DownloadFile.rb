AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
download_request = DownloadFileRequest.new('Sample.docx', nil, nil)
@words_api.download_file(download_request)