AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_style_update = StyleUpdate.new({:Name => 'My Style'})
update_request = UpdateStyleRequest.new('Sample.docx', 'Heading 1', request_style_update, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_style(update_request)