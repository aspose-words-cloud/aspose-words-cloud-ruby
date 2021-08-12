AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
mail_merge_request = ExecuteMailMergeRequest.new('Sample.docx', 'TestExecuteTemplateData.txt', nil, nil, nil, nil, nil, nil, nil, nil, nil)
@words_api.execute_mail_merge(mail_merge_request)