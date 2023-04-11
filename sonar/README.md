Docker Host Requirements

Because SonarQube uses an embedded Elasticsearch, make sure that your Docker host configuration complies with the Elasticsearch production mode requirements and File Descriptors configuration.

For example, on Linux, you can set the recommended values for the current session by running the following commands as root on the host:

```bash
sudo sysctl -w vm.max_map_count=524288
sudo sysctl -w fs.file-max=131072
sudo ulimit -n 131072
sudo ulimit -u 8192
```

To use Sonnar Cli Scanner, here is the code: 
```bash
docker run --rm --network=host -v "$(pwd):/usr/src" sonarsource/sonar-scanner-cli
```
