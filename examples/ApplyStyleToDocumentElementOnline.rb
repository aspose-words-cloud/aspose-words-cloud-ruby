AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_style_apply = StyleApply.new({:StyleName => 'Heading 1'})
apply_style_request = ApplyStyleToDocumentElementOnlineRequest.new(document: request_document, styled_node_path: 'paragraphs/1/paragraphFormat', style_apply: request_style_apply)
@words_api.apply_style_to_document_element_online(apply_style_request)