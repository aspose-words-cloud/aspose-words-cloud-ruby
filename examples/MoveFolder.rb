AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
move_request = MoveFolderRequest.new('/TestMoveFolderDest_Sample', '/TestMoveFolderSrc', nil, nil)
@words_api.move_folder(move_request)