AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request = GetRunOnlineRequest.new(document: request_document, paragraph_path: 'paragraphs/0', index: 0)
@words_api.get_run_online(request)