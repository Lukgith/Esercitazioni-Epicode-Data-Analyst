import scrapy

class SimpleTextSpider(scrapy.Spider):    
    name = "simple_text"    
    start_urls = ['https://github.com/scrapy/scrapy/issues/3513']
    
    def parse(self, response):        
        titles = response.css('h1::text').getall()        
        for title in titles:            
            yield {'title': title}

