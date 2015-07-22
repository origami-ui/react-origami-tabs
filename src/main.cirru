
var
  React $ require :react

var
  div $ React.createFactory :div
  Tabs $ React.createFactory $ require :./tabs

var tabs $ [] :apple :orange :banana :grape
var locale $ \ (x)
  switch x
    :apple
      return ":Red Apple"
    :orange
      return ":Orange"
    :banana
      return ":banana"
    :grape
      return ":Purple grape"
  return x

var pageComponent $ React.createClass $ {}
  :displayName :app-page

  :getInitialState $ \ ()
    return $ {}
      :tab $ . tabs 0

  :onTabSelect $ \ (tab)
    this.setState $ {}
      :tab tab

  :render $ \ ()
    return $ div ({} (:className :app-page))
      Tabs $ {}
        :tabs tabs
        :locale locale
        :tab this.state.tab
        :onSelect this.onTabSelect
      div ({} (:className :result)) this.state.tab

var Page $ React.createFactory pageComponent

React.render (Page) document.body
