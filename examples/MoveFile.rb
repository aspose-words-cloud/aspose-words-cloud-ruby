AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
move_request = MoveFileRequest.new('/TestMoveFileDest_Sample.docx', 'Sample.docx', nil, nil, nil)
@words_api.move_file(move_request)