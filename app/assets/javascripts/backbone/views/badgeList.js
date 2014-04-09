var BadgeListView = Backbone.View.extend({
  el: "ul#badge_list",

  initialize: function() {
    this.listenTo(this.collection, "add", this.addOne);
    this.listenTo(this.collection, "reset", this.addAll);
  },

  addAll: function() {
    this.$el.html("");
    this.collection.each(this.addOne, this);
  },

  addOne: function(badge) {
    var view = new BadgeView({model: badge});
    this.$el.append(view.el);
  }

});