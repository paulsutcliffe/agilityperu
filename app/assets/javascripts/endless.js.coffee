
$(documet).ready ->
  $("ul.duplas-list").infinitescroll
    loading: {
      finished: undefined,
      finishedMsg: null,
      msg: null,
      msgText: "",
      selector: "",
      speed: 'fast',
      start: undefined
    }
    navSelector: "nav.pagination" # selector for the paged navigation (it will be hidden)
    nextSelector: "nav.pagination a[rel=next]" # selector for the NEXT link (to page 2)
    itemSelector: "ul.duplas-list li.dupla" # selector for all items you'll retrieve

