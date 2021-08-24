AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
bookmark_name= 'aspose'

request_bookmark_data = BookmarkData.new({:Name => bookmark_name, :Text => 'This will be the text for Aspose'})
update_request = UpdateBookmarkRequest.new(name: 'Sample.docx', bookmark_name: bookmark_name, bookmark_data: request_bookmark_data)
@words_api.update_bookmark(update_request)