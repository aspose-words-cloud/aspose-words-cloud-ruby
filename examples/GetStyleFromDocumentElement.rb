AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetStyleFromDocumentElementRequest.new('Sample.docx', 'paragraphs/1/paragraphFormat', nil, nil, nil, nil)
@words_api.get_style_from_document_element(request)