AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_footnote_dto = FootnoteUpdate.new({:Text => 'new text is here'})
update_request = UpdateFootnoteRequest.new(name: 'Sample.docx', index: 0, footnote_dto: request_footnote_dto)
@words_api.update_footnote(update_request)