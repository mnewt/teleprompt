function fish_prompt_clojure
  # detect project.clj or build.boot
  # print ...
  if set bootfile (upsearch build.boot)
    cat "$bootfile" | string match -r "(?<=:project\s')[^\s]+"
    return 0
  else if set projectfile (upsearch project.clj)
    cat "$projectfile" | string match -r "(?<=\(defproject\s)[^\s]+"
    return 0
  else
    return 1
  end
end
