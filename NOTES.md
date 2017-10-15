This sandbox_app serves as a workbench form which to build functionality, before committing them to the final app.

* Create User using 'rails g resource User'
  ~ This generates a migration, routes, model and controller
  ~ With the model, I added the macro has_secure_password
    $ additionally, I added password_digest to the Users table
  ~ I made a form using form_for
  ~ I created strong params, user_params
  ~ I am also going to implement validation errors, using fields_with_erros class.
    $ Also, I'm going to put the user form into a partial.  
* So, I've the functionality working, with errors and partials, the styling leaves a little to be desired.  I'll come back to that

* Working user login
    $ Good to write methods, that are used in the controllers, in the controller.
* Build logout, then a little bootstrap and css to make user interface better.  
* WHEN USING CONTROLLER HELPER, INCLUDE 'include {TYPE OF CONTROLLER}Helper'
IN APPLICATION_CONTROLLER

* Did basic bootstrap nav-bar layout.
* Define current_user, logged_in?
* Create partial to handle nav-bar if-statement

Now, going to work on the relationship  between recipe and ingredient. A recipe has_many ingredients, and a ingredient has_many recipes.
  * There will be a recipe_ingredients join table
  * I also want there to be a quantity attribute.
    ~ I think this will belong_to recipe_ingredient
I've got recipe, ingredient and recipe_ingredients migrations and wired up in the models.
  * Need to do the nested routes
  * Need to build strong_params
Also, I want to figure out how to include a recipe_ingredient's quantity.  
  * It feels like that if I add quantity, I will end up with a nested/nested/nested situation.
So, as of now, the user can select search by ingredients, add ingredient(s) and read a description of the recipe.  
  * Perhaps, I could make a rating. This would produce a single tier nesting.

But first I need to build ingredients_attributes= method to accept a user's unique ingredient.  
  * Going to seed ingredient, so I can see if ingredient_ids checkbox is working
Now I'm going to add the nested ingredient param
  * Okay, I've got the basic structure, search by ingredients and recipes, working.
Now, want to add comments
