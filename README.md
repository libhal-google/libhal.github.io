# libhal.github.io

Organization wide repo for docs, assets, and tools any other static information.

## Updating the docs

libhal uses [mkdocs-material](https://squidfunk.github.io/mkdocs-material/) to
generate our documentation.

If you'd like to contribute to the libhal website and documentation you can do
so by first installing `mkdocs-material`.

```bash
pip install mkdocs-material
```

Then to run render and serve the documentation run

```bash
mkdocs serve
```

The page should be available on this address `http://localhost:8000`.

Now whenever you update the markdown in the mkdocs directory, the page will
auto-reload with your changes. Checkout
[mkdocs-material](https://squidfunk.github.io/mkdocs-material/) for more details
on the features that can be used for the site.
