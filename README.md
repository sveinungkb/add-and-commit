# Add & Commit

This is a very minimal addition to [EndBug/add-and-commit](https://github.com/EndBug/add-and-commit) because I needed tagging. Might clean it up and PR it to `add-and-commit`.

## Usage

Add a step like this to your workflow:

```yaml
- name: Commit changes # This is the step name that will be displayed in your runs
  uses: sveinungkb/add-and-commit@latest
  with: # See more info about inputs below
    author_name: Your Name
    author_email: mail@example.com
    message: "Your commit message"
    path: "."
    pattern: "*.js"
    tag_name: "release-tag-v100"
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }} # Leave this line unchanged
```

### Inputs:

- `author_name` : the name of the user that will be displayed as the author of the commit
- `author_email` : the email of the user that will be displayed as the author of the commit
- `message` : the message for the commit
- `path` : the path(s) to stage files from
- `pattern` : the pattern that matches file names
- `tag_name`: the tag name for this commit

### Environment variables:

The only `env` variable required is the token for the action to run: GitHub generates one automatically, but you need to pass it through `env` to make it available to actions. You can find more about `GITHUB_TOKEN` [here](https://help.github.com/en/articles/virtual-environments-for-github-actions#github_token-secret).  
With that said, you can just copy the example line and don't worry about it. If you do want to use a different token you can pass that in, but I wouldn't see any possible advantage in doing so.

## License

This action is distributed under the MIT license, check the [license](LICENSE) for more info.
newline
newline
newline
newline
newline
