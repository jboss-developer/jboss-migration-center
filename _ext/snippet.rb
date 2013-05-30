module Awestruct
  module Extensions
    module JBoss
      module Migration
        module Snippet

          def snippet(path, params = {})
            filename = File.join( '_snippets', path )

            if !File.exists?( filename )
              $LOG.error "Could not find #{filename}" if $LOG.error?
              return nil
            end

            page = site.engine.load_site_page( filename )

            return nil if !page

            params.each do |k,v|
              page.send( "#{k}=", v )
            end if params

            id = path.gsub(/[\/\.]/, "_")

            "<div id=\"#{id}\" data-title=\"Snippet: _snippets/#{path}\" data-toggle=\"tooltip\" data-delay=\"500\" class=\"snippet\">\n#{page.content}\n</div>\n<script type=\"text/javascript\">activateSnippetIdTooltip('#{id}');</script>"
          end

        end
      end
    end
  end
end
