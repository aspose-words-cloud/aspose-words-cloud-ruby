AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request_run = RunInsert.new({:Text => 'run with text'})
insert_request = InsertRunOnlineRequest.new(document: request_document, paragraph_path: 'paragraphs/1', run: request_run)
@words_api.insert_run_online(insert_request)