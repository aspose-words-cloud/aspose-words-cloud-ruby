AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'
bookmark_name= 'aspose'

test_bookmark_data = BookmarkData.new({:Name => bookmark_name, :Text => 'New Bookmark Text'})
update_bookmark = UpdateBookmarkRequest.new(remote_file_name, bookmark_name, test_bookmark_data, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_bookmark(update_bookmark)