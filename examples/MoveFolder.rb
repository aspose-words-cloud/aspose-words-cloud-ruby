AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
move_request = MoveFolderRequest.new(dest_path: '/TestMoveFolderDest_Sample', src_path: '/TestMoveFolderSrc')
@words_api.move_folder(move_request)