Brunch With Ketchup
===============

Application skeleton for Brunch (with CommonJS) for large Angular apps;

As **preprocessors** : 
  - LiveScript
  - Jade
  - Stylus

As **front-end libraries** : 
  - Angular

The skeleton is meant for **large apps**, with a lot of controllers, directives, and meant for maintainability and scalability.

**Note on Bower** : Skeleton uses a `bower.json` file to fetch components (just run `bower install`), but you have to manually copy them over to `vendor/` (and add them in your `config.ls`) because Bower is broken (returning folders as source when running `bower list`) and the plugins for it are broken too (no way to give your own list to fix bower's crap, returning files without extensions, strange bugs).

As **back-end libraries** : (you can of course disable the server-side very easily, for you to swap your own)
  - Express
  - Express-resource

Includes Brunch auto reload.

**Note** : templates must be required as a script, `script(src="/src/{module}.templates.js")` in `src/index.jade` file, and must also be required in your module as `{module}.templates` as in the examples.

**About generators** : This skeleton doesn't include generators as I believe they're not useful (it usually takes me more time to remember the syntax/name of the command/arguments to pass than to create a directory with a file containing `angular.module 'name' <[name.templates]>`) and because using CommonJS, you'd still have to require them by hand.