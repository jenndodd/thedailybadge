var Badge = Backbone.Model.extend({ 
  urlRoot: "/users/"+gon.currentUser.id+"/badges"
});

