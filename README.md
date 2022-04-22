# NodeJS Docker image for Cloudixy
Docker image, used by [Cloudixy](https://github.com/cloudixy/cloudixy) to generate files for new NodeJS projects.

## How to use?
Container currently contains NPM packages for following _frameworks_:
- Vue
- Nuxt
- React

To build Docker container, run:
```
docker build . -t cloudixy/nodecontainer
```

To generate a project, use the following command (Vue):
```
docker run --rm -v "${PWD}:/$(basename `pwd`)" -w "/$(basename `pwd`)" cloudixy/nodecontainer sh -c "vue create project_name -d -f"
```

or (Nuxt):

```
docker run --rm -v "${PWD}:/$(basename `pwd`)" -w "/$(basename `pwd`)" cloudixy/nodecontainer sh -c "npx create-nuxt-app project_name"
```