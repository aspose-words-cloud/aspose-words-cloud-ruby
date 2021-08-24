AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetSectionPageSetupRequest.new(name: 'Sample.docx', section_index: 0)
@words_api.get_section_page_setup(request)