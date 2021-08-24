AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
insert_request = InsertHeaderFooterRequest.new(name: 'Sample.docx', section_path: '', header_footer_type: 'FooterEven')
@words_api.insert_header_footer(insert_request)