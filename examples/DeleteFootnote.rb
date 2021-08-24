AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteFootnoteRequest.new(name: 'Sample.docx', index: 0)
@words_api.delete_footnote(delete_request)