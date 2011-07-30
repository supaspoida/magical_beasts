### Exposures + Decorators = <3

This is an example app I'm using to spike on extending Stephen Caudill's
`decent_exposure` pattern with decorator support. Jeff Casimir's `draper` gem
provides the decorator implementation for the moment.

Stephen & I have been working on a re-write of `decent_exposure` with the goal
of making it more flexible & less coupled to the 'Rails Way' of doing things.
I've been leaning heavily towards a pattern of "configurable exposures" with
the idea that they would be a great place for presenters & decorators to hook
into the stack.

### Running Examples

    git clone git@github.com/supaspoida/magical_beasts
    bundle
    rails server

Browse to http://localhost:3000 and you should see some text about a falcon
clawing your eyes out.

Open up `app/controllers/shapeshifters_controller.rb` and swap some of the
true/false conditions on the exposures, reloading the page as you make changes.
The text will change based on the model & decorator configured for the
exposure.
