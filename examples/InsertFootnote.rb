AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_footnote_dto = FootnoteInsert.new({:FootnoteType => 'Endnote', :Text => 'test endnote'})
insert_request = InsertFootnoteRequest.new(name: 'Sample.docx', footnote_dto: request_footnote_dto)
@words_api.insert_footnote(insert_request)