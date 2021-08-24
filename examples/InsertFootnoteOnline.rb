AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request_footnote_dto = FootnoteInsert.new({:FootnoteType => 'Endnote', :Text => 'test endnote'})
insert_request = InsertFootnoteOnlineRequest.new(document: request_document, footnote_dto: request_footnote_dto)
@words_api.insert_footnote_online(insert_request)