AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetParagraphsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0', nil, nil)
@words_api.get_paragraphs_online(request)