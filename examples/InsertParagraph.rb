AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_paragraph = ParagraphInsert.new({:Text => 'This is a new paragraph for your document'})
insert_request = InsertParagraphRequest.new('Sample.docx', request_paragraph, nil, nil, nil, nil, nil, nil, nil, nil, nil)
@words_api.insert_paragraph(insert_request)