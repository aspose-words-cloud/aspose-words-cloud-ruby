AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request = GetRunsOnlineRequest.new(document: request_document, paragraph_path: 'sections/0/paragraphs/0')
@words_api.get_runs_online(request)