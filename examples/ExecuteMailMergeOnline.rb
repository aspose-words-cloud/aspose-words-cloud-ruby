AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_template = File.open('TestExecuteTemplate.doc')
request_data = File.open('TestExecuteTemplateData.txt')
mail_merge_request = ExecuteMailMergeOnlineRequest.new(template: request_template, data: request_data)
@words_api.execute_mail_merge_online(mail_merge_request)