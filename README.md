# luarocks-rockspec-expander
This is a hacky stopgap GitHub action that builds off of
[luarocks-tag-release](https://github.com/nvim-neorocks/luarocks-tag-release).

In the future we hope to deprecate the need for this repository which should be possible
once https://github.com/nvim-neorocks/luarocks-tag-release/issues/435 or something
similar is made. But for now, this repository exists.


## Requires
An Ubuntu GitHub container


## How To Use
Add this to your GitHub workflow `.yml` / `.yaml` file:

```yaml
- name: Expand The Template Rockspec
  uses: ColinKennedy/luarocks-rockspec-expander@master
  with:
    input: template.rockspec
    output: package_name-scm-1.rockspec
```


## Example
- [ColinKennedy/nvim-best-practices-plugin-template](https://github.com/ColinKennedy/nvim-best-practices-plugin-template/blob/main/.github/workflows/test.yml)
