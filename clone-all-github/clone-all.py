"""Clone all repositories from my GitHub account

If my repo is a fork, sets the remote `origin` to the "parent" project,
and `encukou` to my fork (if different).
The remotes use SSH, but cloning is over HTTPS (so it doesn't need a SSH key).

A token for read-only public access should be in token.txt.
"""

from pathlib import Path
import subprocess
import time

from github import Github

USER = 'encukou'
BASEDIR = Path.home() / 'dev'

token = Path('token.txt').read_text().strip()

gh = Github(token)
print(gh.get_rate_limit())

def run(args, **kwargs):
    print(args)
    kwargs.setdefault('check', True)
    return subprocess.run(args, **kwargs)

for repo in gh.get_user(USER).get_repos():
    print()
    print(repo, repo.name)
    print(gh.rate_limiting)
    print(repo.clone_url)
    print(repo.ssh_url)
    clonedir = BASEDIR / repo.name

    if clonedir.exists():
        print('exists; skipping')
        continue

    if repo.parent:
        print(repo.parent.ssh_url)

        run(['git', 'clone', repo.parent.clone_url, repo.name],
            cwd=BASEDIR)
        run(['git', 'remote', 'set-url', 'origin', repo.parent.ssh_url],
            cwd=clonedir)
        run(['git', 'remote', 'add', 'encukou', repo.clone_url],
            cwd=clonedir)
        run(['git', 'fetch', 'encukou'],
            cwd=clonedir)
        run(['git', 'remote', 'set-url', 'encukou', repo.ssh_url],
            cwd=clonedir)
    else:
        run(['git', 'clone', repo.clone_url, repo.name],
            cwd=BASEDIR)
        run(['git', 'remote', 'set-url', 'origin', repo.ssh_url],
            cwd=clonedir)
    time.sleep(5)
