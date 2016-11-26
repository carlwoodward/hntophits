do ->

  # Regex used to validate the hacker news id.
  numbers_only = RegExp(/^\d+$/)
  # The string 'top_hits' is used in the localstore for the list of 
  # previous seen hn ids.
  storage_key = 'top_hits'

  # Look at the value of the href for the recent top hits to find the
  # 'hacker news id'. Build and return a list of these integers.
  build_hn_id_from_href = (element) ->
    id = element["href"].split("=")[1]
    return id if id.match(numbers_only)
    return

  store = (ids) ->
    localStorage.setItem(storage_key, JSON.stringify(ids))

  get_hn_ids_from_localstore = ->
    ids_map = {}
    ids = JSON.parse(localStorage.getItem(storage_key))
    if ids then ids.forEach((id) -> ids_map[id] = 1)
    ids_map

  update_store_with_current_ids = (ids) ->
    localStorage.setItem(storage_key, JSON.stringify(ids))

  local_storage_isnt_available = ->
    typeof(Storage) == "undefined"

  highlight_new_stories = ->
    return true if local_storage_isnt_available()
    current_hn_ids = []
    previously_seen_hn_ids = get_hn_ids_from_localstore() # previously_seen_hn_ids is a hash
    jQuery('.recent_top_hits .stories tr .story-time').each(->
      hn_id = build_hn_id_from_href($(this).children()[0])
      current_hn_ids.push(hn_id)
      if !previously_seen_hn_ids[hn_id]
        $(this.parentNode).find('.story-link').css("font-weight", "bold")
    )
    update_store_with_current_ids(current_hn_ids)

  # Load this code from a turbolinks event.
  $(document).on('page:change', ->
    return unless $(".stories_front_page_controller").length > 0
    highlight_new_stories())
