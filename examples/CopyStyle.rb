AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_style_copy = StyleCopy.new({:StyleName => 'Heading 1'})
copy_request = CopyStyleRequest.new(name: 'Sample.docx', style_copy: request_style_copy)
@words_api.copy_style(copy_request)