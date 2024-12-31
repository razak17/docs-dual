/*******************************************************************************
   Ref 1: https://gist.githubusercontent.com/kohane27/7e6a1553039d52e7c4c0e5a9573cb046/raw/0a5623fd23eb530022907f8c8d25107075a54a3b/surfingkeys.txt
   Ref 2: https://github.com/Foldex/surfingkeys-config
 ******************************************************************************/

//----------------------------------
// COMPATIBILITY PREFIX
//----------------------------------
const {
    addSearchAlias,
  Front,
  Clipboard,
  Normal,
  Hints,
  Visual,
  cmap,
  imap,
  iunmap,
  vmap,
  vunmap,
  map,
  mapkey,
  unmap,
  removeSearchAlias,
  aceVimMap,
} = api;
const disableMainBindings = false
//----------------------------------
// SETTINGS
//----------------------------------
Hints.setCharacters("asdfgyuiopqwertnmzxcvb");
settings.defaultSearchEngine = "d";
settings.hintAlign = "left";
settings.focusFirstCandidate = true;
settings.focusAfterClosed = "last";
settings.scrollStepSize = 240; // j/k scrolls step
settings.tabsThreshold = 0;
settings.modeAfterYank = "Normal";
settings.startToShowEmoji = 2;
settings.omnibarMaxResults = 20;
//----------------------------------
// MAPKEYS
//----------------------------------
mapkey("t", "Choose a tab", () => { Front.openOmnibar({ type: "Tabs" }); });
mapkey("<Ctrl-d>", "Scroll down", () => { Normal.scroll("pageDown"); });
mapkey("<Ctrl-u>", "Scroll up", () => { Normal.scroll("pageUp"); });
mapkey('p', "Open the clipboard's URL in the current tab", () => { Clipboard.read(function(response) { window.location.href = response.data; }); });
//----------------------------------
// REMAP
//----------------------------------
aceVimMap("jk", "<Esc>", "insert");
imap("jk", "<Esc>");
//----------------------------------
// MAP
//----------------------------------
// Normal Mode
map(">", ">>"); // move current tab to right
map("<", "<<"); // move current tab to left
map('<Alt-f>', 'cf');
map('<Alt-h>', '[[');
map('<Alt-l>', ']]');
map('F', 'C');
map("gu", ";U"); // edit current URL and open in same tab
map("gU", ";u"); // edit current URL and open in new tab
map("h", "oh"); // open URL from history
map("H", "S"); // go back in history
map("J", "E"); // go one tab left
map("K", "R"); // go one tab right
map("L", "D"); // go forward in history
map('o', 'go'); // open URL in current tab
map("O", ";e"); // edit settings
map('P', 'cc'); // open clipboard URL in new tab
map("q", "x"); // close current tab
map("Q", "X"); // restore closed tab
map("U", "X"); // restore closed tab
map("yl", "ya"); // copy current page's URL
map("yu", "yy"); // copy current page's URL
map("yy", "yv"); // yank text of an element
map("yY", "ymv"); // yank text of multiple elements
map("zf", "gf"); // open a link in non-active new tab
// Visual Mode
vmap("v", "zv"); // enter visual mode, and select whole element
//----------------------------------
// UNMAP
//----------------------------------
// Normal Mode
unmap("$"); // scroll all the way to the right
unmap(">>"); // move current tab to right
unmap("<<"); // move current tab to left
unmap("[["); // click on the previous link on current page
unmap("]]"); // click on the next link on current page
unmap(";ap"); // apply proxy info from clipboard
unmap(";cp"); // copy proxy info
unmap(";di"); // download image
unmap(";e"); // edit settings
unmap(";fs"); // display hints to focus scrollable elements
unmap(";gt"); // gather filtered tabs into current window
unmap(";gw"); // gather all tabs into current window
unmap(";i"); // open chrome inspect
unmap(";j"); // close downloads shelf
unmap(";m"); // mouse out last element
unmap(";pa"); // set proxy mode `always`
unmap(";pb"); // set proxy mode `byhost`
unmap(";pc"); // set proxy mode `clear`
unmap(";pd"); // set proxy mode `direct`
unmap(";pf"); // fill form with data from yf
unmap(";pj"); // restore settings data from clipboard
unmap(";pm"); // preview markdown
unmap(";pp"); // paste html on current page
unmap(";ps"); // set proxy mode `system`
unmap(";s"); // toggle pdf viewer
unmap(";t"); // translate selected text with google
unmap(";u"); // edit current URL with vim editor, and open in new tab
unmap(";U"); // edit current URL with vim editor, and open in same tab
unmap(";v"); // open neovim
unmap(";w"); // focus top window
unmap("<Ctrl-6>"); // go to last used tab
unmap("<Ctrl-h>"); // mouse over elements.
unmap("<Ctrl-j>"); // mouse out elements.
unmap("0"); // scroll all the way to the left
unmap("af"); // open a link in active new tab
unmap("cc"); // open clipboard in new tab
unmap("cf"); // open multiple links in a new tab
unmap("cp"); // toggle proxy for current tab
unmap("cq"); // query word with Hints
unmap("cS"); // reset scroll target
unmap("cs"); // change scroll target
unmap("C"); // open a link in non-active new tab
unmap("D"); // go forward in history
unmap("e"); // scroll half page up
unmap("E"); // scroll full page up
unmap("g?"); // reload current page without query string(all parts after question mark)
unmap("g#"); // reload current page without hash fragment
unmap("gi"); // go to the first edit box
// unmap("gf"); // open a link in non-active new tab
unmap("go"); // open URL in current tab
// unmap("gu"); // go up one path in the URL
unmap("gs"); // view page source
unmap("gxt"); // close tab on left
unmap("gxT"); // close tab on right
unmap("ob"); // open Omnibar for baidu Search
unmap("oe"); // open Omnibar for wikipedia Search
unmap("oh"); // open URL from history
unmap("oi"); // open incognito window
unmap("od"); // open Omnibar for duckduckgo Search
unmap("og"); // open Omnibar for google Search
unmap("om"); // open URL from vim-like marks
unmap("on"); // open newtab
unmap("os"); // open Omnibar for stackoverflow Search
unmap("ow"); // open Omnibar for bing Search
unmap("ox"); // open recently closed URL
unmap("oy"); // open Omnibar for youtube Search
// unmap("O"); // open detected links from text
unmap("R"); // go one tab right
unmap("sb"); // search selected with baidu
unmap("sd"); // search selected with duckduckgo
unmap("se"); // search selected with wikipedia
unmap("sg"); // search selected with google
unmap("sh"); // search selected with github
unmap("ss"); // search selected with stackoverflow
unmap("sw"); // search selected with bing
unmap("sy"); // search selected with youtube
unmap("S"); // go back in history
unmap("T"); // choose a tab
unmap("w"); // switch frames
unmap("W"); // move current tab to another window
unmap("x"); // close current tab
unmap("X"); // restore closed tab
unmap("ya"); // copy a link URL to the clipboard
unmap("yc"); // copy a column of a table
unmap("yd"); // copy current downloading URL
unmap("yf"); // copy form data in JSON on current page
unmap("yj"); // copy current settings
unmap("yh"); // copy current page's host
unmap("yma"); // copy multiple link URLs to the clipboard
unmap("ymc"); // copy multiple columns of a table
unmap("ymv"); // yank text of multiple elements
unmap("yp"); // copy form data for POST on current page
unmap("yq"); // copy pre text
unmap("ys"); // copy current page's source
unmap("yT"); // duplicate current tab in background
unmap("yv"); // yank text of an element
// Insert Mode
iunmap("Alt-b"); // move the cursor Backward 1 word
iunmap("Alt-f"); // move the cursor Forward 1 word
iunmap("Alt-w"); // delete a word backwards
iunmap("Alt-d"); // delete a word forwards
// Visual Mode
vunmap("q"); // translate word under cursor
vunmap("t"); // translate selected text with google
//----------------------------------
// DISABLE MAIN BINDINGS
//----------------------------------
if (disableMainBindings) {
  unmap("d"); // scroll half page down
  unmap("f"); // open a link, press SHIFT to flip overlapped hints, hold SPACE to hide hints
  unmap("F"); // open a link in non-active new tab
  unmap("h"); // scroll left
  unmap("H"); // go back in history
  unmap("j"); // scroll down
  unmap("J"); // go one tab left
  unmap("k"); // scroll up
  unmap("K"); // go one tab right
  unmap("L"); // go forward in history
  unmap("o");
  unmap("u"); // scroll half page up
  unmap("U"); // scroll full page up
}
//----------------------------------
// SEARCH ENGINES
//----------------------------------
removeSearchAlias("d", "s");
removeSearchAlias("g", "s");
removeSearchAlias("b", "s");
removeSearchAlias("h", "s");
removeSearchAlias("w", "s");
removeSearchAlias("y", "s");
removeSearchAlias("s", "s");

addSearchAlias('ama', 'amazon', 'https://www.amazon.com/s?k=', 's');
addSearchAlias('ap', 'arch pkg', 'https://www.archlinux.org/packages/?sort=&q=', 's');
addSearchAlias('aur', 'aur', 'https://aur.archlinux.org/packages/?O=0&SeB=nd&K=', 's');
addSearchAlias('aw', 'arch wiki', 'https://wiki.archlinux.org/index.php?title=Special:Search&search=', 's');
addSearchAlias('d',  'ddg', 'https://duckduckgo.com/?q=', 's');
addSearchAlias('dh', 'docker', 'https://hub.docker.com/search?type=image&q=', 's');
addSearchAlias('fh', 'flathub', 'https://flathub.org/apps/search/', 's');
addSearchAlias('gg', 'google', 'https://google.com/search?q=%s', 's');
addSearchAlias('gh', 'github', 'https://github.com/search?q=', 's');
addSearchAlias('pdb', 'proton', 'https://www.protondb.com/search?q=', 's');
addSearchAlias('r', 'reddit', 'https://libreddit.spike.codes/r/', 's');
addSearchAlias('st', 'steam', 'https://store.steampowered.com/search/?term=', 's');
addSearchAlias('wiki', 'wikipedia', 'https://en.wikipedia.org/wiki/Special:Search/', 's');
addSearchAlias('y', 'yt', 'https://invidious.snopyta.org/search?q=', 's');
//----------------------------------
// THEME
//----------------------------------
// Theme (adopted from: https://github.com/Foldex/surfingkeys-config)

// Doom One
Hints.style(
  "border: solid 2px #282C34; color:#EBCB8B; background: initial; background-color: #2E3440;"
);
Hints.style(
  "border: solid 2px #282C34 !important; padding: 1px !important; color: #51AFEF !important; background: #2E3440 !important;",
  "text"
);
Visual.style("marks", "background-color: #98be6599;");
Visual.style("cursor", "background-color: #51AFEF;");

settings.theme = `
/* Edit these variables for easy theme making */
:root {
  /* Font */
  --font: 'Source Code Pro', Ubuntu, sans;
  --font-size: 13;
  --font-weight: bold;

  /* -------------- */
  /* --- THEMES --- */
  /* -------------- */

  /* -------------------- */
  /* --      NORD      -- */
  /* -------------------- */
  /* -- DELETE LINE TO ENABLE THEME
  --fg: #E5E9F0;
  --bg: #3B4252;
  --bg-dark: #2E3440;
  --border: #4C566A;
  --main-fg: #88C0D0;
  --accent-fg: #A3BE8C;
  --info-fg: #5E81AC;
  --select: #4C566A;
  -- DELETE LINE TO ENABLE THEME */

  /* Unused Alternate Colors */
  /* --orange: #D08770; */
  /* --red: #BF616A; */
  /* --yellow: #EBCB8B; */

  /* -------------------- */
  /* --    DOOM ONE    -- */
  /* -------------------- */
  --fg: #51AFEF;
  --bg: #2E3440;
  --bg-dark: #21242B;
  --border: #2257A0;
  --main-fg: #51AFEF;
  --accent-fg: #98be65;
  --info-fg: #C678DD;
  --select: #4C566A;

  /* Unused Alternate Colors */
  /* --border-alt: #282C34; */
  /* --cyan: #46D9FF; */
  /* --orange: #DA8548; */
  /* --red: #FF6C6B; */
  /* --yellow: #ECBE7B; */

}

/* ---------- Generic ---------- */
.sk_theme {
background: var(--bg);
color: var(--fg);
  background-color: var(--bg);
  border-color: var(--border);
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
}

input {
  font-family: var(--font);
  font-weight: var(--font-weight);
}

.sk_theme tbody {
  color: var(--fg);
}

.sk_theme input {
  color: var(--fg);
}

/* Hints */
#sk_hints .begin {
  color: var(--accent-fg) !important;
}

#sk_tabs .sk_tab {
  background: var(--bg-dark);
  border: 1px solid var(--border);
}

#sk_tabs .sk_tab_title {
  color: var(--fg);
}

#sk_tabs .sk_tab_url {
  color: var(--main-fg);
}

#sk_tabs .sk_tab_hint {
  background: var(--bg);
  border: 1px solid var(--border);
  color: var(--accent-fg);
}

.sk_theme #sk_frame {
  background: var(--bg);
  opacity: 0.2;
  color: var(--accent-fg);
}

/* ---------- Omnibar ---------- */
/* Uncomment this and use settings.omnibarPosition = 'bottom' for Pentadactyl/Tridactyl style bottom bar */
/* .sk_theme#sk_omnibar {
  width: 100%;
  left: 0;
}
*/

.sk_theme .title {
  color: var(--accent-fg);
}

.sk_theme .url {
  color: var(--main-fg);
}

.sk_theme .annotation {
  color: var(--accent-fg);
}

.sk_theme .omnibar_highlight {
  color: var(--accent-fg);
}

.sk_theme .omnibar_timestamp {
  color: var(--info-fg);
}

.sk_theme .omnibar_visitcount {
  color: var(--accent-fg);
}

.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
  background: var(--bg-dark);
}

.sk_theme #sk_omnibarSearchResult ul li.focused {
  background: var(--border);
}

.sk_theme #sk_omnibarSearchArea {
  border-top-color: var(--border);
  border-bottom-color: var(--border);
}

.sk_theme #sk_omnibarSearchArea input,
.sk_theme #sk_omnibarSearchArea span {
  font-size: var(--font-size);
}

.sk_theme .separator {
  color: var(--accent-fg);
}

/* ---------- Popup Notification Banner ---------- */
#sk_banner {
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
  background: var(--bg);
  border-color: var(--border);
  color: var(--fg);
  opacity: 0.9;
}

/* ---------- Popup Keys ---------- */
#sk_keystroke {
  background-color: var(--bg);
}

.sk_theme kbd .candidates {
  color: var(--info-fg);
}

.sk_theme span.annotation {
  color: var(--accent-fg);
}

/* ---------- Popup Translation Bubble ---------- */
#sk_bubble {
  background-color: var(--bg) !important;
  color: var(--fg) !important;
  border-color: var(--border) !important;
}

#sk_bubble * {
  color: var(--fg) !important;
}

#sk_bubble div.sk_arrow div:nth-of-type(1) {
  border-top-color: var(--border) !important;
  border-bottom-color: var(--border) !important;
}

#sk_bubble div.sk_arrow div:nth-of-type(2) {
  border-top-color: var(--bg) !important;
  border-bottom-color: var(--bg) !important;
}

/* ---------- Search ---------- */
#sk_status,
#sk_find {
  font-size: var(--font-size);
  border-color: var(--border);
}

.sk_theme kbd {
  background: var(--bg-dark);
  border-color: var(--border);
  box-shadow: none;
  color: var(--fg);
}

.sk_theme .feature_name span {
  color: var(--main-fg);
}

/* ---------- ACE Editor ---------- */
#sk_editor {
  background: var(--bg-dark) !important;
  height: 50% !important;
  /* Remove this to restore the default editor size */
}

.ace_dialog-bottom {
  border-top: 1px solid var(--bg) !important;
}

.ace-chrome .ace_print-margin,
.ace_gutter,
.ace_gutter-cell,
.ace_dialog {
  background: var(--bg) !important;
}

.ace-chrome {
  color: var(--fg) !important;
}

.ace_gutter,
.ace_dialog {
  color: var(--fg) !important;
}

.ace_cursor {
  color: var(--fg) !important;
}

.normal-mode .ace_cursor {
  background-color: var(--fg) !important;
  border: var(--fg) !important;
  opacity: 0.7 !important;
}

.ace_marker-layer .ace_selection {
  background: var(--select) !important;
}

.ace_editor,
.ace_dialog span,
.ace_dialog input {
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
}
`;
