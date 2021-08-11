AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetSectionPageSetupOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, nil, nil)
@words_api.get_section_page_setup_online(request)