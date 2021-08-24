AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_style_copy = StyleCopy.new({:StyleName => 'Heading 1'})
copy_request = CopyStyleOnlineRequest.new(document: request_document, style_copy: request_style_copy)
@words_api.copy_style_online(copy_request)