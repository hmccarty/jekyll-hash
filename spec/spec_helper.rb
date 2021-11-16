TEST_DIR = File.dirname(__FILE__)

require 'liquid'
require File.expand_path("../lib/jekyll-hash.rb", TEST_DIR)

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'

  def render_liquid(content, variables)
    template = Liquid::Template.parse(content)
    template.render(variables)
  end
end