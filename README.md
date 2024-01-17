# libhal.github.io

Organization wide repo for docs, assets, and tools any other static information.

## Updating the docs

libhal uses [mkdocs-material](https://squidfunk.github.io/mkdocs-material/) for our static documentation and [sphinx](https://www.sphinx-doc.org/en/master/) for our API documentation

If you'd like to contribute to the libhal website and documentation you can do so by quickly setting up the enviornement by running the following commands. Please note that the build script is designed for a bash environment and is intended to be used on unix-based operating systems. The documentation is fully compatible with Windows, however you will need to write your own `.bat` install script or run the commands individually (as well as switch from bash's commands to powershell or command prompt's variants of them). 

Please first install python 3.10 or later. Then run the following to install the required packages for running the documentation.

```bash
pip install -r requirements.txt
```

Now to actually build the documentation.

```bash
./build.sh
```

> [!NOTE]
> You may need to run `chmod +x build.sh` to run it.


Finally to serve the documentation:
```bash
    mkdocs serve
```
The page should be available on this address `http://127.0.0.1:8000`.

Now whenever you update the markdown in the mkdocs directory, the page will
auto-reload with your changes, *however* if you are making changes to the API documentation, you must rebuild the documentation.
If you changed just `rst` or `md` files in the `sphinx` directory you can simply run the command inside the `sphinx` directory.

```bash
    sphinx-build -b html -Dbreathe_projects.libhal=../doxygen_output/xml . output
```
If things changed in the actual code for the documentation, you will need to build the doxygen files as well.
Run the following starting in the root of this repo.

```bash
    doxygen Doxyfile.in
    cd sphinx
    sphinx-build -b html -Dbreathe_projects.libhal=../doxygen_output/xml . output
```

Checkout [mkdocs-material](https://squidfunk.github.io/mkdocs-material/) for more details
on the features that can be used for the static side of this site.

Checkout [sphinx](https://www.sphinx-doc.org/en/master/) for how to use sphinx at a basic level, [breathe](https://breathe.readthedocs.io/en/latest/) on how to use doxygen directives on how to organize your code inside of sphinx `rst` or `md` files, and finally the [theme](https://pydata-sphinx-theme.readthedocs.io/en/stable/) for theme specific uses for the API documentation.

## Contributing

See [`CONTRIBUTING.md`](CONTRIBUTING.md) for details.

## License

Apache 2.0; see [`LICENSE`](LICENSE) for details.

## Disclaimer

This project is not an official Google project. It is not supported by
Google and Google specifically disclaims all warranties as to its quality,
merchantability, or fitness for a particular purpose.

