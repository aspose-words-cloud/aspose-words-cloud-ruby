AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_page_setup = PageSetup.new({:RtlGutter => true, :LeftMargin => 10, :Orientation => 'Landscape', :PaperSize => 'A5'})
update_request = UpdateSectionPageSetupOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, request_page_setup, nil, nil, nil, nil, nil)
@words_api.update_section_page_setup_online(update_request)