AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_paragraph = ParagraphInsert.new({:Text => 'This is a new paragraph for your document'})
insert_request = InsertParagraphOnlineRequest.new(document: request_document, paragraph: request_paragraph, node_path: 'sections/0')
@words_api.insert_paragraph_online(insert_request)