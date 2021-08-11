AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_run = RunInsert.new({:Text => 'run with text'})
insert_request = InsertRunRequest.new('Sample.docx', 'paragraphs/1', request_run, nil, nil, nil, nil, nil, nil, nil, nil)
@words_api.insert_run(insert_request)