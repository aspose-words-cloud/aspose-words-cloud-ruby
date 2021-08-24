AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
move_request = MoveFileRequest.new(dest_path: '/TestMoveFileDest_Sample.docx', src_path: 'Sample.docx')
@words_api.move_file(move_request)