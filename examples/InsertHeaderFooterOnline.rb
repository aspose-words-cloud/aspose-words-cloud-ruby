AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
insert_request = InsertHeaderFooterOnlineRequest.new(document: request_document, section_path: '', header_footer_type: 'FooterEven')
@words_api.insert_header_footer_online(insert_request)