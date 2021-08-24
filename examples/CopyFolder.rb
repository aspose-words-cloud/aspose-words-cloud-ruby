AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
folder_to_copy= '/TestCopyFolder'

copy_request = CopyFolderRequest.new(dest_path: folder_to_copy + 'Dest', src_path: folder_to_copy + 'Src')
@words_api.copy_folder(copy_request)