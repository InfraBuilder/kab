`kab` is a Kubernetes backup tool for resources only (not for volumes data)

## Use within docker

If you don't want to setup dependencies, you can use the dockerised version :

```
docker run -it --rm -v $PWD:/data infrabuilder/kab kab -h
```


## Usage

You can display `kab` usage with `kab --help` :

```
=====[ Optionnal flags ]============================================
    -y
    --yes                         : Bypass confirmation
    -kc <path>
    --kubeconfig <path>           : Use custom kubeconfig instead of default one
    -cr <list>
    --cluster-resources <list>    : Set cluster-wide resource list, comma separated
    -nr <list>
    --namespaced-resources <list> : Set namespaced resource list, comma separated
    -d <dir>
    --backup-dir <dir>            : Set backup directory target
    --debug                       : Set debug level to "debug"
    -dl <level>
    --debug-level <level>         : Set debug level
                                    Possible values: standard, warn, info, debug
    -h
    --help                        : Display this help message
    -v
    --verbose                     : Activate verbose mode by setting debug-level to 'info'
    -V
    --version                     : Show current script version
=====[ Examples ]==========================================================
  Backup all cluster resources the easy way, with confirmation
  -------------------------------------------------------------------------
  | kab                                                                   |
  -------------------------------------------------------------------------
  Backup all cluster resources without confirmation (batch mode)
  -------------------------------------------------------------------------
  | kab -y                                                                |
  -------------------------------------------------------------------------
  Backup all ressources, create files in current directory
  -------------------------------------------------------------------------
  | kab -d .                                                              |
  -------------------------------------------------------------------------
  Backup only cluster resources, by using empty namespaces resources list
  -------------------------------------------------------------------------
  | knb -nr ""                                                            |
  -------------------------------------------------------------------------
  Backup cluster with custom kubeconfig
  -------------------------------------------------------------------------
  | knb -kc path/to/mykubeconfig                                          |
  -------------------------------------------------------------------------
```