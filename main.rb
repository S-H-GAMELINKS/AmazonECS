require 'amazon/ecs'
require 'active_support'
require 'active_support/core_ext'

Amazon::Ecs.configure do |options|
    options[:AWS_access_key_id] = ''
    options[:AWS_secret_key] = ''
    options[:associate_tag] = ''
    options[:search_index]      = 'All'                      
    options[:response_group]    = 'Medium'                     
    options[:country]           = 'jp'                         
end

res = Amazon::Ecs.item_search('4902777008615', :search_index => 'All')
puts res.get_element('Title').to_s.gsub!(/<Title>|<\/Title>/, "")
puts res.total_results
