AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteParagraphTabStopRequest.new(name: 'Sample.docx', position: 72.0, index: 0)
@words_api.delete_paragraph_tab_stop(delete_request)