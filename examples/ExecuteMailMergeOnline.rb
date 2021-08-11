AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
mail_merge_request = ExecuteMailMergeOnlineRequest.new(File.open(File.join(documents_dir, 'TestExecuteTemplate.doc')), File.open(File.join(documents_dir, 'TestExecuteTemplateData.txt')), nil, nil, nil)
@words_api.execute_mail_merge_online(mail_merge_request)