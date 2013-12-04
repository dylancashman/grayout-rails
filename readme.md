# grayout-rails

## Purpose

The hope with this gem is that it will give you a view helper method that would be used for
graying out parts of the form that a user does not have access to.  Here is a simple
use case.

Suppose the user is filling out a form, but part of it should only be available to
be filled out if some other context is true.  It's better to gray out the unavailable
fields, so that the user knows that this is the right page to fill them out.

The application should also provide feedback to the user as to why they cannot select
the form fields or text.  This feedback will be available via a javascript tooltip using
[JQuery UI's library](http://jqueryui.com/tooltip/).  It will also hopefully use `<alt>` 
tags to provide graceful degradation for users that do not use javascript or use 
screenreaders.

form_for(@participant) do |f|
  
  f.text_field :some_field
  f.text_area :another_field

  grayout :if => @participant.has_valid_address?,
          :message => "Participant needs a valid address before they can get mailings" do

    f.select :publication_requested_id
    f.select :delivery_method_id
    f.select :participant_address_id
  end

  f.select :other_field_id

  f.submit "Create"
end

## Where I am now.

The helper just adds a div around the elements.  I've started to bring in the assets to
use the JQuery UI library.  I need to add that into the helper.


## Special Thanks

Special thanks to simple_form - I looked at that gem as an example
of how to add a view helper.
