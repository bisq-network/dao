# bisq-dao

This repository contains a [`.mrconfig`](.mrconfig) file that makes it simple to clone all `bisq-network` repositories. Here's how to use it:

    brew install mr                                     # or equivalent
    git clone https://github.com/bisq-network/dao bisq  # clone this repo
    cd bisq
    mr checkout                                         # clone all bisq-* repos

See the [myrepos](https://myrepos.branchable.com/) homepage for more details.

> TIP: If you do not wish to use `mr`, just use `git clone` as usual to clone whichever `bisq-*` repositories you wish to work with. So long as they are checked out directly within your clone of this repository, the instructions below will work fine.

This repository also contains a [`settings.gradle`](settings.gradle) file that defines a [composite build](https://docs.gradle.org/current/userguide/composite_builds.html) consisting of all `bisq-*` that have been checked out above. This makes it easy to import all `bisq-*` components into a single IDEA project as follows:

 1. Go to `Import Project`, select `settings.gradle` and click `Open`
 1. In the `Import Project from Gradle` screen, check the `Use auto-import` option and click `OK`
 1. When prompted whether to overwrite the existing `.idea` directory, click `Yes`
 1. Go to `Preferences->Build, Execution, Deployment->Compiler->Annotation Processors` and check the `Enable annotation processing` option (to enable processing of Lombok annotations)
 1. In the `Project` tool window, right click on the root-level `.idea` folder, select `Git->Revert...` and click OK in the dialog that appears (to restore source-controlled `.idea` configuration files that get overwritten during project import)
 1. Go to `Help->Edit Custom Properties...`, add a line to the file that reads `idea.max.intellisense.filesize=12500`, then quit and restart IDEA (to handle Bisq's very large generated `PB.java` Protobuf source file)
 1. Go to `Build->Build project`. Everything should build cleanly. You should be able to run tests, run `main` methods in any component, etc.
