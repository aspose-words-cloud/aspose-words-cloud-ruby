AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_style_update = StyleUpdate.new({:Name => 'My Style'})
update_request = UpdateStyleRequest.new(name: 'Sample.docx', style_name: 'Heading 1', style_update: request_style_update)
@words_api.update_style(update_request)