AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_footnote_dto = FootnoteInsert.new({:FootnoteType => 'Endnote', :Text => 'test endnote'})
insert_request = InsertFootnoteRequest.new('Sample.docx', request_footnote_dto, nil, nil, nil, nil, nil, nil, nil, nil)
@words_api.insert_footnote(insert_request)