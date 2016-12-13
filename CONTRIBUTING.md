Checklist (and a short version for the impatient)
=================================================

  * Commits:

    - Make commits of logical units.

    - Check for unnecessary whitespace with "git diff --check" before
      committing.

    - Commit using Unix line endings (check the settings around "crlf" in
      git-config(1)).

    - Do not check in commented out code or unneeded files.

    - The first line of the commit message should be a short
      description (50 characters is the soft limit, excluding ticket
      number(s)), and should skip the full stop.

    - Associate the issue in the message. The first line should include
      the issue number in the form "(JIRA-#XXXX) Rest of message".

    - The body should provide a meaningful commit message, which:

      - uses the imperative, present tense: "change", not "changed" or
        "changes".

      - includes motivation for the change, and contrasts its
        implementation with the previous behavior.

    - Make sure that you have tests for the bug you are fixing, or
      feature you are adding.

    - Make sure the test suites passes after your commit:
      `bundle exec rspec spec/acceptance` More information on [testing](#Testing) below

    - When introducing a new feature, make sure it is properly
      documented in the README.md

  * Submission:

    * Pre-requisites:

      - Make sure you have a [UberOps GitLab Server account](https://gitlab.ubermonitoring.com)

      - [Create a ticket](https://uberops.atlassian.net/secure/CreateIssue!default.jspa), or [watch the ticket](https://uberops.atlassian.net/projects/GEORGE) you are patching for.

    * Preferred method:

      - Fork the repository on GitLab.

      - Push your changes to a topic branch in your fork of the
        repository. (the format ticket/1234-short_description_of_change is
        usually preferred for this project).

      - Submit a merge request to the repository in the `cogbundles`
        group.

The long version
================

  1.  Make separate commits for logically separate changes.

      Please break your commits down into logically consistent units
      which include new or changed tests relevant to the rest of the
      change.  The goal of doing this is to make the diff easier to
      read for whoever is reviewing your code.  In general, the easier
      your diff is to read, the more likely someone will be happy to
      review it and get it into the code base.

      If you are going to refactor a piece of code, please do so as a
      separate commit from your feature or bug fix changes.

      We also really appreciate changes that include tests to make
      sure the bug is not re-introduced, and that the feature is not
      accidentally broken.

      Describe the technical detail of the change(s).  If your
      description starts to get too long, that is a good sign that you
      probably need to split up your commit into more finely grained
      pieces.

      Commits which plainly describe the things which help
      reviewers check the patch and future developers understand the
      code are much more likely to be merged in with a minimum of
      bike-shedding or requested changes.  Ideally, the commit message
      would include information, and be in a form suitable for
      inclusion in the release notes for the version of the project that
      includes them.

      Please also check that you are not introducing any trailing
      whitespace or other "whitespace errors".  You can do this by
      running "git diff --check" on your changes before you commit.

  2.  Sending your patches

      To submit your changes via a GitLab merge request, we _highly_
      recommend that you have them on a topic branch, instead of
      directly on "master".
      It makes things much easier to keep track of, especially if
      you decide to work on another thing before your first change
      is merged in.

      GitLab has some pretty good
      [general documentation](/help) on using
      their suite.  We also have documentation on
      [GitLab Basics](/help/gitlab-basics/README.md)
      [Creating Merge Requests](/help/gitlab-basics/add-merge-request.md).

      In general, after pushing your topic branch up to your
      repository on GitLab, you can switch to the branch in the
      GitLab UI and click "Merge Request" towards the top of the page
      in order to open a merge request.


  3.  Update the related GitLab issue.

      If there is a GitLab/JIRA issue associated with the change you
      submitted, then you should update the ticket to include the
      location of your branch, along with any other commentary you
      may wish to make.

Testing
=======

Getting Started
---------------

Our cogbundles provide a [`Gemfile`](./Gemfile)s which can tell a ruby
package manager such as [bundler](http://bundler.io/) what Ruby packages,
or Gems, are required to build, develop, and test this software.

Please make sure you have [bundler installed](http://bundler.io/#getting-started)
on your system, then use it to install all dependencies needed for this project,
by running

```shell
% bundle install
Fetching gem metadata from https://rubygems.org/........
Fetching gem metadata from https://rubygems.org/..
Using rake (10.1.0)
Using builder (3.2.2)
-- 8><-- many more --><8 --
Using serverspec (0.6.3)
Using rspec-system-serverspec (1.0.0)
Using bundler (1.3.5)
Your bundle is complete!
Use `bundle show [gemname]` to see where a bundled gem is installed.
```

NOTE some systems may require you to run this command with sudo.

If you already have those gems installed, make sure they are up-to-date:

```shell
% bundle update
```

With all dependencies in place and up-to-date we can now run the tests:

```shell
% bundle exec rake spec
```

Writing Tests
-------------

XXX getting started writing tests.

If you have commit access to the repository
===========================================

Even if you have commit access to the repository, you will still need to
go through the process above, and have someone else review and merge
in your changes.  The rule is that all changes must be reviewed by a
developer on the project *(that did not write the code)* to ensure that
all changes go through a code review process.

Having someone other than the author of the topic branch recorded as
performing the merge is the record that they performed the code
review.


Additional Resources
====================

* [General GitLab documentation](/help)

* [GitLab merge request documentation](/help/gitlab-basics/add-merge-request.md)

