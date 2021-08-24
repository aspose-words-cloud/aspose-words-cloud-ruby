AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteSectionRequest.new(name: 'Sample.docx', section_index: 0)
@words_api.delete_section(delete_request)