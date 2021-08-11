AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_footnote_dto = FootnoteUpdate.new({:Text => 'new text is here'})
update_request = UpdateFootnoteRequest.new('Sample.docx', 0, request_footnote_dto, nil, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_footnote(update_request)