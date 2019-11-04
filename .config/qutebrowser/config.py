config.load_autoconfig()

c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36"

c.completion.open_categories = ['quickmarks', 'bookmarks', 'history']

c.spellcheck.languages = ["en-US", "fr-FR"]

c.url.searchengines = {
"DEFAULT": "https://duckduckgo.com/?q={}",
"g": "https://www.google.com/search?q={}",
"mit": "https://www.google.ch/maps/dir/{}",
"map": "https://www.google.com/maps/search/{}",
"ef": "https://dictionary.reverso.net/english-french/{}",
"fe": "https://dictionary.reverso.net/french-english/{}",
"tef": "https://translate.google.com/#view=home&op=translate&sl=en&tl=fr&text={}",
"tfe": "https://translate.google.com/#view=home&op=translate&sl=fr&tl=en&text={}",
"w": "https://fr.wikipedia.org/wiki/{}",
"wa": "https://wiki.archlinux.org/?search={}",
"we": "https://en.wikipedia.org/wiki/{}",
"yt": "https://www.youtube.com/results?search_query={}",
"pb":  "https://www.thepiratebay.org/s/?q={}"}

c.scrolling.smooth = True

config.bind("w1", 'tab-move 1')
config.bind("w2", 'tab-move 2')
config.bind("w3", 'tab-move 3')
config.bind("w4", 'tab-move 4')
config.bind("w5", 'tab-move 5')
config.bind("w6", 'tab-move 6')
config.bind("w7", 'tab-move 7')
config.bind("w8", 'tab-move 8')
config.bind("w9", 'tab-move 9')
config.bind("w10", 'tab-move 10')

config.bind("g1", 'tab-focus 1')
config.bind("g2", 'tab-focus 2')
config.bind("g3", 'tab-focus 3')
config.bind("g4", 'tab-focus 4')
config.bind("g5", 'tab-focus 5')
config.bind("g6", 'tab-focus 6')
config.bind("g7", 'tab-focus 7')
config.bind("g8", 'tab-focus 8')
config.bind("g9", 'tab-focus 9')
config.bind("g10", 'tab-focus 10')

# Font used in the completion categories.
# Type: Font
c.fonts.completion.category = 'bold 11pt monospace'

# Font used in the completion widget.
# Type: Font
c.fonts.completion.entry = '11pt monospace'

# Font used for the debugging console.
# Type: QtFont
c.fonts.debug_console = '11pt monospace'

# Font used for the downloadbar.
# Type: Font
c.fonts.downloads = '11pt monospace'

# Font used for the hints.
# Type: Font
c.fonts.hints = 'bold 11pt monospace'

# Font used in the keyhint widget.
# Type: Font
c.fonts.keyhint = '11pt monospace'

# Font used for error messages.
# Type: Font
c.fonts.messages.error = '11pt monospace'

# Font used for info messages.
# Type: Font
c.fonts.messages.info = '11pt monospace'

# Font used for warning messages.
# Type: Font
c.fonts.messages.warning = '11pt monospace'

# Font used for prompts.
# Type: Font
c.fonts.prompts = '11pt sans-serif'

# Font used in the statusbar.
# Type: Font
c.fonts.statusbar = '11pt monospace'
