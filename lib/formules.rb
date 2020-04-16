page = Nokogiri::HTML(open("https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Accueil_principal"))
puts page.css("title")[0].name #=> title
puts page.css("title").text # => My webpage



page = Nokogiri::HTML(open("https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Accueil_principal"))
puts page.css("title")[0].name #=> title
puts page.css("title").text # => My webpage

doc = Nokogiri::HTML(open("https://www.google.com/search?q=doughnuts"))
 doc.xpath('//a').each do |node| #trouve tous les liens d'une page
 puts node.text
 end

ou doc.xpath('//h3/a').each do |node| #Find all "a" tags with a parent tag whose name is "h3"

ou doc.xpath('//h3[@class = "r"]/a[@class = "l"] #Find all "a" tags with a class attribute equal to "l" and an immediate parent tag "h3" that


PAGE_URL = "http://ruby.bastardsbook.com/files/hello-webpage.html" 
page.css('title')     




pour le array :

crypto_name_array = [ , , ]
 .each.

result = Hash.new # initialise un hash 
result['ta_key'] = 'ta_value' #stocke des infos dans le hash



/html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/thead/tr/th[3]

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
puts page.css("title")[0].name #=> title
puts page.css("title").text # => My webpage
puts page.css("cmc-details-panel-price__price").text # => My webpage




