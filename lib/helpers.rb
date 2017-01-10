include Nanoc::Helpers::Blogging
include Nanoc::Helpers::Tagging
include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::Rendering
          
module GoogleHelpers
  def ga_tracking(ga_tracking_code=nil)
    ga_tracking_code ||= @config[:ga_tracking_code] || 'UA-xxxxxx-x'
    <<-EOS
  <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', '#{ga_tracking_code}', 'auto');
        ga('send', 'pageview');

  </script>
    EOS
  end
end

include GoogleHelpers
  
