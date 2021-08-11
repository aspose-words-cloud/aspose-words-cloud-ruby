AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_footnote_dto = FootnoteInsert.new({:FootnoteType => 'Endnote', :Text => 'test endnote'})
insert_request = InsertFootnoteOnlineRequest.new(File.open(File.join(documents_dir, '/Footnote.doc')), request_footnote_dto, '', nil, nil, nil, nil, nil)
@words_api.insert_footnote_online(insert_request)