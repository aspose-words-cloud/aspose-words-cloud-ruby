AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteHeaderFooterRequest.new(name: 'Sample.docx', section_path: '', index: 0)
@words_api.delete_header_footer(delete_request)