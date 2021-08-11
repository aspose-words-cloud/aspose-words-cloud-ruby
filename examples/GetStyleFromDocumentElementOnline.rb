AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetStyleFromDocumentElementOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'paragraphs/1/paragraphFormat', nil, nil)
@words_api.get_style_from_document_element_online(request)