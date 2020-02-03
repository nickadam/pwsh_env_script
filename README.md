# pwsh_env_script
Takes your PowerShell script from an environment variable and runs it in a container.

## Run from image
```
docker run -e SCRIPT='While($True){Get-Date; Start-Sleep 1}'  nickadam/pwsh_env_script
```

## Run from compose file

See [docker-compose.yml](https://github.com/nickadam/pwsh_env_script/blob/master/docker-compose.yml) for an example script, notice the `$$` in place of `$` for variable names.