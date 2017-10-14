This sandbox_app serves as a workbench form which to build functionality, before committing them to the final app.

* Create User using 'rails g resource User'
  ~ This generates a migration, routes, model and controller
  ~ With the model, I added the macro has_secure_password
    $ additionally, I added password_digest to the Users table
  ~ I made a form using form_for
  ~ I created strong params, user_params
  ~ I am also going to implement validation errors, using fields_with_erros class.
  
