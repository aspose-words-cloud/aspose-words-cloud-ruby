AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'

mail_merge_request = ExecuteMailMergeRequest.new(remote_file_name, 'TestExecuteTemplateData.txt', nil, nil, nil, nil, nil, nil, nil, nil, remote_file_name)
@words_api.execute_mail_merge(mail_merge_request)