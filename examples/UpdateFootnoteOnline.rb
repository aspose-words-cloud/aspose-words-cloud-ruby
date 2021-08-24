AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request_footnote_dto = FootnoteUpdate.new({:Text => 'new text is here'})
update_request = UpdateFootnoteOnlineRequest.new(document: request_document, footnote_dto: request_footnote_dto, index: 0)
@words_api.update_footnote_online(update_request)