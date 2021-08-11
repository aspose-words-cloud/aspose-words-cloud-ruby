AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteParagraphListFormatOnlineRequest.new(File.open(File.join(documents_dir, '/ParagraphDeleteListFormat.doc')), 0, '', nil, nil, nil, nil, nil)
@words_api.delete_paragraph_list_format_online(delete_request)