AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_bookmark_data = BookmarkData.new({:Name => bookmark_name, :Text => 'This will be the text for Aspose'})
update_request = UpdateBookmarkOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), bookmark_name, request_bookmark_data, nil, nil, 'Sample.docx', nil, nil)
@words_api.update_bookmark_online(update_request)