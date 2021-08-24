AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetHeaderFootersRequest.new(name: 'Sample.docx', section_path: '')
@words_api.get_header_footers(request)