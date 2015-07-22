
var
  React $ require :react
  classnames $ require :classnames

var
  div $ React.createFactory :div

var T React.PropTypes

= module.exports $ React.createClass $ {}
  :displayName :react-origami-tabs

  :propTypes $ {}
    :tabs T.array.isRequired
    :tab T.string.isRequired
    :onSelect T.func.isRequired
    :locale T.func

  :onTabClick $ \ (tab)
    this.props.onSelect tab

  :render $ \ ()
    var locale this.props.locale
    return $ div ({} (:className :react-origami-tabs))
      this.props.tabs.map $ \\ (tab)
        var className $ classnames :tab
          {}
            :is-selected (is tab this.props.tab)
        var onClick $ \\ ()
          this.onTabClick tab
        return $ div ({} (:className className) (:onClick onClick) (:key tab))
          cond (? locale) (locale tab) tab
