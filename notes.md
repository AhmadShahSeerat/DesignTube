# DesignTube

* Make a migration for design 
  - rails g migration (rake db:drop db:create db:migrate   THIS DELETES AND CREATE NEW     MIGRATION )
  - adding columns we need 
        - title 
        - created_At
        - design_url
        - description 
        - views, default: 0
        - likes, default: 0 
        - dislikes, default: 0
        - user_id  (who made this design or image) 

  * Make a model file for Design 

  * Add few methods 
    - upload_at 
    - search, looking into title 
    - most_recent 

  * Index route 
    - Seed some designs  

  * Make a show route 

  * Add link to go from index to show 

  * add nav to test routes 

  * Add custom route

# **Delivarables** 
  
  * Make use of Forms 

     - form_tag, form_with, form_tag
  
  * Add Full CRUD for Image
  * Search Bar 
  * Scope Method
  * Manipulate datetime object


# <%= link_to "Delete Book", @book, method: "delete", { confirm: "Are you sure?", disable_with: "Processing..." } %> for deleting

# Deliverables 

  * Review
    - route 
    - UPDATE SEARCH FUNCTION (QUERING FROM RUBY GUIDES )
  
  * where to validate 
   * Where we Validates?
       - Model => can be more protected no one can change it
       - views => validation here, anyone can change it in inspection, we dont want that happen to our code
       - Controller => .save, .valid?, .empty, i.e in create if params[:description] == "" then render :blah but we dont want more logic here.
    - Using AR validation guide 
    - DISPLAYING ERROR MESSAGES
    - creating custom validations 

  * Rails CRUD * fully done

  ## Rails Associations and nested forms  

  * set up 
   - add another model 
   - collage model
    ### THIS IS HOW WE ADD NEW COLLAGE OR ANY MODEL WITH ALL ITS RELEVANT FILE, THE COOL THING ABOUT RESOURCES IS THAT IT ADDS A RESOURCES FILE FOR IT AT ROUTES FOR US "rails g resources collage name...
       - Description 
       - Quickly stub out associations 
       - Collage has many Designs
       - Design belongs to Collage 
       - Add coolage_id to design
    ### rails g migration add_collage_id_to_designs collage:belongs_to 
    (this above code says that you have to be apart of the playlist)
    ### or//add_collage_id_to_designs collage_id:integer (dont have to be)
       - Full CRUD for collage 
    (upto here was all creating collages, checking association and it looks like all works so far, now nested forms)
     
   
  - Understand nested forms 
      - what happens during .new method?
      - allow a user to choose from a playlist that already exists
      - create a custom attribute writer 
      - create a nested form for playlist, add 3 designs
      * resources 
       - api.rubyonrails.org
       - apidock.com/rails

