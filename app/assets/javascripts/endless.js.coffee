
$(document).ready ->
  ("#region-duplas").infinitescroll
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
    itemSelector: "#region-duplas #duplas" # selector for all items you'll retrieve