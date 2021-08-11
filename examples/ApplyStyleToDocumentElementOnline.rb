AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_style_apply = StyleApply.new({:StyleName => 'Heading 1'})
apply_style_request = ApplyStyleToDocumentElementOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'paragraphs/1/paragraphFormat', request_style_apply, nil, nil, nil, nil, nil)
@words_api.apply_style_to_document_element_online(apply_style_request)