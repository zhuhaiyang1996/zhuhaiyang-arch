# ui
config.source("gruvbox.py")
c.colors.webpage.prefers_color_scheme_dark = True
c.completion.shrink = True
c.completion.use_best_match = True
c.statusbar.widgets = ["progress", "keypress", "url", "history"]
c.scrolling.bar = "never"
c.tabs.position = "top"
c.tabs.width = "15%"
c.tabs.title.format = "{index}: {audio}{current_title}"
c.tabs.title.format_pinned = "{index}: {audio}{current_title}"
c.statusbar.show = "never"
c.colors.webpage.darkmode.enabled = True


# general
c.auto_save.session = True
c.content.default_encoding = "utf-8"
c.content.javascript.can_access_clipboard = True
c.content.notifications = True  # notifications aren't supported now anyway
c.content.pdfjs = True
c.editor.command = ["kitty", "nvim", "-e", "exec {line}g{column0}l", "{file}"]
c.downloads.location.prompt = False
c.input.insert_mode.auto_load = True
#c.spellcheck.languages = ["en-US"]
c.content.proxy = "socks://localhost:7891/"
c.tabs.background = True
c.tabs.last_close = "close"
c.tabs.mousewheel_switching = False
c.qt.args += ["enable-gpu-rasterization",
              "enable-features=WebRTCPipeWireCapturer"]

# per-domain settings
config.set("content.register_protocol_handler",
           True, "*://calendar.google.com")

config.set("content.desktop_capture", True, "*://app.wire.com")

config.set("content.register_protocol_handler",
           True, "*://teams.microsoft.com")
config.set("content.desktop_capture", True, "*://teams.microsoft.com")

config.set("content.register_protocol_handler", True, "*://app.slack.com")
config.set("content.desktop_capture", True, "*://app.slack.com")

# privacy
c.content.cookies.accept = "no-3rdparty"
c.content.webrtc_ip_handling_policy = "default-public-interface-only"
c.content.site_specific_quirks = False
c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36"

c.downloads.location.directory = '/home/zhuhaiyang/Downloads'
# urls
c.url.searchengines = {
    "DEFAULT": "https://google.com/search?q={}",
    "?": "https://google.com/search?q={}",
}

c.url.default_page = "~/.config/qutebrowser/startpage/index.html"
c.url.start_pages = ["~/.config/qutebrowser/startpage/index.html"]

# keys
bindings = {
    ',t': ':open https://twitter.com',
    ',y': ':open https://www.youtube.com/',
    ',l': ':open https://wangchujiang.com/linux-command/',
    ',g': ':open https://github.com/',
    ',a': ':open https://wiki.archlinux.org/',
    ',r': ':open https://www.reddit.com/',
    ',h': ':open https://news.ycombinator.com/news',
    ',d': ':open https://www.deepl.com/translator',
    ',m': 'hint links spawn kitty mpv {hint-url}',
    ',Z': 'hint links spawn kitty -e youtube-dl {hint-url}',
    't':'set-cmd-text -s :open -t',
    'xb': 'config-cycle statusbar.show always never',
    'xt': 'config-cycle tabs.show always never',
    'xx': 'config-cycle statusbar.show always never;; config-cycle tabs.show always never',

    "co": "nop",
}

for key, bind in bindings.items():
    config.bind(key, bind)

