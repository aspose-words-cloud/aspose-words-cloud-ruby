AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'
bookmark_name= 'aspose'

request_bookmark_data = BookmarkData.new({:Name => bookmark_name, :Text => bookmark_text})
update_bookmark = UpdateBookmarkRequest.new(remote_file_name, bookmark_name, request_bookmark_data, nil, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)
@words_api.update_bookmark(update_bookmark)