Matthew Brett's Emacs Config
----------------------------

This is Matthew Brett's emacs configuration.  It's based on Ryan
McGuire's (EnigmaCurry) Emacs Configuration. You can find more about
Ryan's environment at `Ryan's Blog
<http://www.enigmacurry.com/category/emacs>`_.

If you want to use this environment, you might want to do something like
the following::

    # move old emacs files out of the way
    cd
    mv .emacs .emacs.old
    mv .emacs.d .emacs.d.old
    mv .emacs.site.d .emacs.site.d.old
    # prepare for new python installation stuff
    MY_HOME_PY_PKGS=$HOME/usr/local/lib/python2.6/site-packages
    mkdir -p $MY_HOME_PY_PKGS
    # get emacs configuration
    mkdir dev_trees
    cd dev_trees
    git clone git://github.com/matthew-brett/emacs.git
    # Get rope (pymacs) files and link into local python path
    hg clone http://bitbucket.org/agr/rope
    ln -s ~/dev_trees/rope/rope $MY_HOME_PY_PKGS
    hg clone http://bitbucket.org/agr/ropemode
    ln -s ~/dev_trees/ropemode/ropemode $MY_HOME_PY_PKGS
    hg clone http://bitbucket.org/agr/ropemacs
    ln -s ~/dev_trees/ropemacs/ropemacs $MY_HOME_PY_PKGS
    # put emacs configuration into canonical place in home directory
    cd
    ln -s dev_trees/emacs .emacs.d
    ln -s .emacs.d/init.el .emacs
    mkdir .emacs.site.d
    # As necessary, install and edit custom settings for emacs.  
    # You will at least need somehow to have $MY_HOME_PY_PKGS on your 
    # PYTHONPATH somewhere in order for pymacs / rope to run
    cp .emacs.d/custom-env-eg.el .emacs.site.d/custom-env.el
    # you might also want to install pymacs if you don't have it already, 
    # and you may need to copy pymacs.el into .emacs.site.d





