AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_page_setup = PageSetup.new({:RtlGutter => true, :LeftMargin => 10.0, :Orientation => 'Landscape', :PaperSize => 'A5'})
update_request = UpdateSectionPageSetupRequest.new(name: 'Sample.docx', section_index: 0, page_setup: request_page_setup)
@words_api.update_section_page_setup(update_request)