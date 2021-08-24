AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetHeaderFooterRequest.new(name: 'Sample.docx', header_footer_index: 0)
@words_api.get_header_footer(request)