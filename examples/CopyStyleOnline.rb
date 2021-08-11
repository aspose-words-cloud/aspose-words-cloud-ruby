AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_style_copy = StyleCopy.new({:StyleName => 'Heading 1'})
copy_request = CopyStyleOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_style_copy, nil, nil, nil, nil, nil)
@words_api.copy_style_online(copy_request)