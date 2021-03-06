object @person_social_apps
attributes :id, :approved, :person_id, :profile_link, :social_app_id, :created_at, :updated_at, :user_id, :temp_user_id
if @original_person
  node(:social_app){ |person_social_app|
    @social_apps.select {|s| person_social_app.social_app_id == s.id }[0]
  }
else
  node(:social_app){ |person_social_app|
    @social_apps.select {|s| person_social_app.social_app_id == s.id && s.approved == true }[0]
  }
end
