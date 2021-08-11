AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_report_engine_settings = ReportEngineSettings.new({:DataSourceType => 'Json', :DataSourceName => 'persons'})
build_report_request = BuildReportOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'Data.json', request_report_engine_settings, nil)
@words_api.build_report_online(build_report_request)