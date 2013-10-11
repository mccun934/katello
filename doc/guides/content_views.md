Content Views
=============

What problems do they solve?
 * Allows you stage content through environments (Dev, Test, Production)
 * Allows you to filter the contents of a repository (remove a particular package, blacklist certain errata, etc..).
 * Allows you to have multiple snapshots of the same product or repository

Definitions
-----------

 * Content View - snapshot of one or more repositories with or without filters applied
 * Content View Definition - a list of products/repositories and filters used for generating "Content Views"
 * Publishing - Content View Definitions are 'published' to a Content View.  Products and repositoires are cloned with filters applied.


General Workflow
----------------

First create a product and repository in library and populating it with content (by syncing it or uploading content to it).
A system can now register directly to library and recieve that content.  Updates will be available as soon as new content is synced or uploaded.

To utilize content views for filtering and snapshoting:

1. Create a Content View Definition
2. Add the desired product/repository to the Content View Definition
3. Publish the definition to a Content View
4. Subscribe the system to the content view

At this point the system will no longer be getting content directly from Library, but from the content view. Updates to library will not affect this system.

