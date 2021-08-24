AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_page_setup = PageSetup.new({:RtlGutter => true, :LeftMargin => 10, :Orientation => 'Landscape', :PaperSize => 'A5'})
update_request = UpdateSectionPageSetupOnlineRequest.new(document: request_document, section_index: 0, page_setup: request_page_setup)
@words_api.update_section_page_setup_online(update_request)