def anchorize(text)
  text.gsub(/(http|https|ftp|ftps|file|smb):\/\/[\.\w\.\/\:]*/i, '<a href="\0">\0</a>')
end
