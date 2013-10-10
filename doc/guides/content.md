Content
=======

Katello can currently host two different types of content rpms and puppet modules.
These can be synced from an external resource or can be uploaded directly. 

Definitions
-----------

* Repository - collection of content (either rpm or puppet)
* Product - Collection of repositories, systems subscribe to a product
* Provider - Collection of products mainly for organizational purposes (this may be rmeoved in the future)
* Library - A special environment where repositories are created and content is synced or uploaded to.  A system can subscribe to library and recieve content as soon as it is synced or uploaded.


Creating a Product
------------------



Creating a Repository
---------------------


Syncing a Repository
--------------------


Uploading Rpm Content
---------------------
Rpms can be uploaded using the katello cli:

```katello -u admin -p admin repo content_upload  --repo=repo --product=product --filepath=/path/to/package-1.0.0.x86_64rpm  --content_type=rpm --org=ACME_Corporation```





Subscribing a System
--------------------

