AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteParagraphTabStopRequest.new('Sample.docx', 72.0, 0, nil, nil, nil, nil, nil, nil)
@words_api.delete_paragraph_tab_stop(delete_request)