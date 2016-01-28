require "mechanize"
require "desktop"

agent = Mechanize.new
page = agent.get("http://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US")
a = eval(page.body)
print a[:images].first[:url]
` desktop http://www.bing.com/#{ a[:images].first[:url] } `
