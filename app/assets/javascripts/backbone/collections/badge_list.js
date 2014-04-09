var BadgeCollection = Backbone.Collection.extend({
  model: Badge,
  url: "/users/"+ gon.currentUser.id +"/badges"
});