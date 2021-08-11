AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'

request_bookmark_data = BookmarkData.new({:Name => bookmark_name, :Text => 'This will be the text for Aspose'})
update_request = UpdateBookmarkRequest.new(remote_file_name, bookmark_name, request_bookmark_data, nil, nil, nil, nil, remote_file_name, nil, nil)
@words_api.update_bookmark(update_request)