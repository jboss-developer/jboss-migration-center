require File.join File.dirname(__FILE__), 'snippet'
require 'kramdown'

Awestruct::Extensions::Pipeline.new do
  # extension Awestruct::Extensions::Posts.new( '/news' ) 
    extension Awestruct::Extensions::Indexifier.new
    helper Awestruct::Extensions::JBoss::Migration::Snippet
    helper Awestruct::Extensions::Partial
end

