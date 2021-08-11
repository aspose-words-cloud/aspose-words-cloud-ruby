AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
insert_request = InsertHeaderFooterOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/HeaderFooters/HeadersFooters.doc')), '', 'FooterEven', nil, nil, nil, nil, nil)
@words_api.insert_header_footer_online(insert_request)