function isLink(url) {
  return url.startsWith('http://') || url.startsWith('https://')
}

// Path: js/isLinks.js
function isLink(url) {
  return url
    .toLowerCase()
    .startsWith('http://') || url.toLowerCase().startsWith('https://')
}

// Path: js/isLinks.js
function isLink(url) {
  return url.toLowerCase().startsWith('http://') || url.toLowerCase().startsWith('https://') || url.toLowerCase().startsWith('www.')
}
