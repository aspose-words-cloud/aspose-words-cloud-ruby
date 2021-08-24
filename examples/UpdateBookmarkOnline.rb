AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
bookmark_name= 'aspose'

request_document = File.open('Sample.docx')
request_bookmark_data = BookmarkData.new({:Name => bookmark_name, :Text => 'This will be the text for Aspose'})
update_request = UpdateBookmarkOnlineRequest.new(document: request_document, bookmark_name: bookmark_name, bookmark_data: request_bookmark_data, dest_file_name: 'Sample.docx')
@words_api.update_bookmark_online(update_request)