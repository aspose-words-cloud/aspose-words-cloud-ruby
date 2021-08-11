AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
folder_to_copy= '/TestCopyFolder'

copy_request = CopyFolderRequest.new(folder_to_copy + 'Dest', folder_to_copy + 'Src', nil, nil)
@words_api.copy_folder(copy_request)