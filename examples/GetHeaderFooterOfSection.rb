AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetHeaderFooterOfSectionRequest.new(name: 'Sample.docx', header_footer_index: 0, section_index: 0)
@words_api.get_header_footer_of_section(request)