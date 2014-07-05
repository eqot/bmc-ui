Polymer 'bmc-ui',

  CELL_IDS: ['kp', 'ka', 'kr', 'vp', 'cr', 'ch', 'cs', 'co', 'rs']

  domReady: ->
    @resize()
    window.onresize = @resize.bind(@)

    for id in @CELL_IDS
      element = @$[id]
      element.onclick = @click.bind(@)

  resize: ->
    width = document.body.clientWidth
    height = document.body.clientHeight

    widthTop = width / 5
    heightTop = height * 2 / 3

    for child, i in @$.top.children
      style = child.style
      style.width = widthTop + 'px'
      style.height = heightTop + 'px'
      style.top = 0 + 'px'
      style.left = widthTop * i + 'px'

    for child, i in @$.kar.children
      style = child.style
      style.width = widthTop + 'px'
      style.height = heightTop / 2 + 'px'
      style.top = heightTop * i / 2 + 'px'
      style.left = 0 + 'px'

    for child, i in @$.crh.children
      style = child.style
      style.width = widthTop + 'px'
      style.height = heightTop / 2 + 'px'
      style.top = heightTop * i / 2 + 'px'
      style.left = 0 + 'px'

    widthBottom = width / 2
    heightBottom = height - heightTop

    for child, i in @$.bottom.children
      style = child.style
      style.width = widthBottom + 'px'
      style.height = heightBottom + 'px'
      style.top = heightTop + 'px'
      style.left = widthBottom * i + 'px'

  click: (event) ->
    console.log event
