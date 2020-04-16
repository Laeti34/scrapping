require 'dotenv'# Appelle la gem Dotenv
require 'rubygems'
require 'nokogiri'
require 'open-uri'



Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exécute app.rb)
# et grâce à la gem Dotenv, on importe toutes les données enregistrées dans un hash ENV

def url
Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
end

def symbols
  symbols_array = url.xpath("//tr[*]/td[3]").collect(&:text)
end

def prices
prices_array = url.xpath("//tr[*]/td[5]").collect(&:text)
end

def a_hash
  hash_crypto = Hash[symbols.zip(prices)]
  return hash_crypto
end

def b_hash
  array_final = []
  a_hash.each { |key_value| array_final << {key_value[0] => key_value[1]}}
  puts array_final
end

def perform
  a_hash
  b_hash
end

perform
