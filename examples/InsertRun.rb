AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_run = RunInsert.new({:Text => 'run with text'})
insert_request = InsertRunRequest.new(name: 'Sample.docx', paragraph_path: 'paragraphs/1', run: request_run)
@words_api.insert_run(insert_request)