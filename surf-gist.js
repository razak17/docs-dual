// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Compatibility Prefix                                                        │
// ╰──────────────────────────────────────────────────────────────────────────────╯
const {
  Hints,
  Visual,
  cmap,
  imap,
  iunmap,
  vmap,
  vunmap,
  map,
  unmap,
  removeSearchAlias,
  aceVimMap,
} = api;

// available keys
// unmap("J");
// unmap("K");

// ---- Settings ----
Hints.setCharacters("asdfgyuiopqwertnmzxcvb");

settings.defaultSearchEngine = "d";
settings.hintAlign = "left";
settings.focusAfterClosed = "last";
settings.modeAfterYank = "Normal";
settings.startToShowEmoji = 2;

// omnibar
settings.tabsThreshold = 0;
settings.omnibarMaxResults = 20;
settings.focusFirstCandidate = true;

// j/k scrolls step
settings.scrollStepSize = 240;

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  ---- remap -----                                                            │
// ╰──────────────────────────────────────────────────────────────────────────────╯
aceVimMap("jk", "<Esc>", "insert");
imap("jk", "<Esc>");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Help                                                                        │
// ╰──────────────────────────────────────────────────────────────────────────────╯
unmap("p");
unmap(";ql");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Mouse Click                                                                 │
// ╰──────────────────────────────────────────────────────────────────────────────╯

// open link in new tab
map("zf", "gf");
unmap("gf");

map("F", "cf");
unmap("cf");

unmap("[[");
unmap("]]");
unmap(";m");
unmap(";fs");
unmap(";di");
unmap("O");
unmap("af");
unmap("C");
unmap("<Ctrl-h>");
unmap("<Ctrl-j>");
unmap("I");
unmap("gi");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Scroll Page / Element                                                       │
// ╰──────────────────────────────────────────────────────────────────────────────╯
map("<Ctrl-d>", "P");
unmap("P");

map("<Ctrl-u>", "U");
unmap("U");
unmap("u");

unmap("0");
unmap("cS");
unmap("cs");
unmap("e");
unmap("d");
unmap("$");
unmap(";w");
unmap("w");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Tabs                                                                        │
// ╰──────────────────────────────────────────────────────────────────────────────╯
unmap("yT");
unmap("gxt");
unmap("gxT");
unmap(";gt");
unmap(";gw");
unmap("W");
unmap("on");

// close current tab
map("q", "x");
unmap("x");

// open closed tab
map("Q", "X");
unmap("X");

// switch tab
map("h", "E");
unmap("E");
map("l", "R");
unmap("R");

// move tab left/right
map(">", ">>");
unmap(">>");
map("<", "<<");
unmap("<<");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Page Navigation                                                             │
// ╰──────────────────────────────────────────────────────────────────────────────╯
unmap("r");
unmap("gu");
unmap("g?");
unmap("g#");
unmap(";u");
unmap("<Ctrl-6>");

// edit current URL with vim and reload
map("gU", ";U");
unmap(";U");

// go page history previous/forward
map("H", "S");
unmap("S");
map("L", "D");
unmap("D");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Search selected with                                                        │
// ╰──────────────────────────────────────────────────────────────────────────────╯
unmap("sg");
unmap("sd");
unmap("ss");
unmap("sy");
unmap("sb");
unmap("se");
unmap("sw");
unmap("sh");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Clipboard                                                                   │
// ╰──────────────────────────────────────────────────────────────────────────────╯
// yank text
map("yy", "yv");
unmap("yv");

// yank multiple text
map("yY", "ymv");
unmap("ymv");

// yank link
map("yl", "ya");
unmap("ya");

unmap("yma");
unmap("ymc");
unmap("cq");
unmap("yc");
unmap("yc");
unmap("yq");
unmap("ys");
unmap("yj");
unmap("yh");
unmap("yf");
unmap("yp");
unmap("yd");
unmap(";pp");
unmap(";pj");
unmap(";pf");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  omnibar                                                                     │
// ╰──────────────────────────────────────────────────────────────────────────────╯
// omnibar for opened tabs
// map("t", "T");
map("<Ctrl-g>", "T");
unmap("T");

// unmap("og"); // google
// unmap("od"); // ddg
unmap("ab");
unmap("om");
unmap("ob");
unmap("oe");
unmap("ow");
unmap("os");
unmap("ox");
unmap("oy");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Visual Mode                                                                 │
// ╰──────────────────────────────────────────────────────────────────────────────╯
vunmap("t");
vunmap("q");

vmap("v", "zv");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  proxy                                                                       │
// ╰──────────────────────────────────────────────────────────────────────────────╯
unmap("spa");
unmap("spb");
unmap("spc");
unmap("spd");
unmap("sps");
unmap("cp");
unmap(";cp");
unmap(";ap");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Misc                                                                        │
// ╰──────────────────────────────────────────────────────────────────────────────╯

unmap(";t");
// unmap("si");
// unmap("ga");
// unmap("gc");
// unmap("gn");
// unmap("gr");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Settings                                                                    │
// ╰──────────────────────────────────────────────────────────────────────────────╯
unmap(";pm");
unmap(";e");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Chrome URLs                                                                 │
// ╰──────────────────────────────────────────────────────────────────────────────╯
unmap("gs");
unmap(";j");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Insert Mode                                                                 │
// ╰──────────────────────────────────────────────────────────────────────────────╯
// disable emoji
// iunmap(":");
iunmap("Alt-b");
iunmap("Alt-f");
iunmap("Alt-w");
iunmap("Alt-d");

// ---- Search Engines -----
// removeSearchAlias("d", "s");
// removeSearchAlias("g", "s");
removeSearchAlias("b", "s");
removeSearchAlias("h", "s");
removeSearchAlias("w", "s");
removeSearchAlias("y", "s");
removeSearchAlias("s", "s");

// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  Theme (adopted from: https://github.com/Foldex/surfingkeys-config)          │
// ╰──────────────────────────────────────────────────────────────────────────────╯

// Nord
// Hints.style(
//   "border: solid 2px #4C566A; color:#A3BE8C; background: initial; background-color: #3B4252;"
// );
// Hints.style(
//   "border: solid 2px #4C566A !important; padding: 1px !important; color: #E5E9F0 !important; background: #3B4252 !important;",
//   "text"
// );
// Visual.style("marks", "background-color: #A3BE8C99;");
// Visual.style("cursor", "background-color: #88C0D0;");

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
  --font-size: 12;
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

