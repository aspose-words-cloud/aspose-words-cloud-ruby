AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request = GetStyleFromDocumentElementOnlineRequest.new(document: request_document, styled_node_path: 'paragraphs/1/paragraphFormat')
@words_api.get_style_from_document_element_online(request)