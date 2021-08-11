AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_paragraph = ParagraphInsert.new({:Text => 'This is a new paragraph for your document'})
insert_request = InsertParagraphOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_paragraph, 'sections/0', nil, nil, nil, nil, nil, nil)
@words_api.insert_paragraph_online(insert_request)