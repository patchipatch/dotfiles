config.load_autoconfig()
c.url.searchengines = {
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        'yt': 'https://youtube.com/results?search_query={}',
        'eb': 'https://ebay.com/sch/{}'}
c.content.blocking.adblock.lists = ['https://easylist.to/easylist/easylist.txt', 'https://easylist.to/easylist/easyprivacy.txt', 'https://easylist-downloads.adblockplus.org/easylistdutch.txt', 'https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt', 'https://www.i-dont-care-about-cookies.eu/abp/', 'https://secure.fanboy.co.nz/fanboy-cookiemonster.txt']
