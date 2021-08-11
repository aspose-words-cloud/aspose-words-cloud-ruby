AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_style_apply = StyleApply.new({:StyleName => 'Heading 1'})
apply_style_request = ApplyStyleToDocumentElementRequest.new('Sample.docx', 'paragraphs/1/paragraphFormat', request_style_apply, nil, nil, nil, nil, nil, nil, nil)
@words_api.apply_style_to_document_element(apply_style_request)