var BadgeView = Backbone.View.extend({
  tagName: "li",

  events: {

  },

  initialize: function() {
    this.listenTo(this.model, "change", this.render);
    this.model.fetch();
    this.render();
  },

  render: function() {
    var template = $("script.badgetemplate").html();
    var rendered = _.template(template, {badge: this.model});
    this.$el.html(rendered);
  }
});