### How to add and test an extension from vscode marketplace
- Download a `vsix` file from the marketplace (e.g. https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.aws-toolkit-vscode)
- Put the file in `./example-extensions` folder
- Run `bb run prepare-example-extensions`

### Procedure for upgrading vscode:
- Add `https://github.com/microsoft/vscode.git` as a git remote, merge new changes into `mainline`:
```
git remote add upstream https://github.com/microsoft/vscode.git
git fetch upstream
git merge upstream/master
```
- If there are new dependencies, make sure that we need them. If we don't, move them to `ignoredDependencies`.
- Build and test locally, apply changes if necessary.
- Create a CR.
- There is a chance that our internal npm index would not have some dependencies and the build will fail. In this case request a merge with live VS. If it doesn't help, downgrade vscode.
