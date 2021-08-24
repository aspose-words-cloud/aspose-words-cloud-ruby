AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_style_update = StyleUpdate.new({:Name => 'My Style'})
update_request = UpdateStyleOnlineRequest.new(document: request_document, style_name: 'Heading 1', style_update: request_style_update)
@words_api.update_style_online(update_request)