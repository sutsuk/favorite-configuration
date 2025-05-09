# GitHub Fix Author Note

## Create mailmap file

```mailmap
sutsuk <107033259+sutsuk@users.noreply.github.com> <old-email@example.com>
```

## Run git-filter-repo

```bash
git filter-repo -f --mailmap {Specify a path of the mailmap file}
```

