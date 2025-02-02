# Changelog

## [1.0.0-alpha.6](https://github.com/camptocamp/devops-stack-module-traefik/compare/v1.0.0-alpha.5...v1.0.0-alpha.6) (2022-12-14)


### Bug Fixes

* **main:** enrich autosync var and default to true ([#28](https://github.com/camptocamp/devops-stack-module-traefik/issues/28)) ([5b5b169](https://github.com/camptocamp/devops-stack-module-traefik/commit/5b5b1690c17d8a8bda7179ddb9de93c21e6fe10b))

## [1.0.0-alpha.5](https://github.com/camptocamp/devops-stack-module-traefik/compare/v1.0.0-alpha.4...v1.0.0-alpha.5) (2022-12-09)


### Features

* **main:** introduce a variable to set autosync ([#25](https://github.com/camptocamp/devops-stack-module-traefik/issues/25)) ([b418a72](https://github.com/camptocamp/devops-stack-module-traefik/commit/b418a72e3125843eb0368fd300857a3ba72949f7))

## [1.0.0-alpha.4](https://github.com/camptocamp/devops-stack-module-traefik/compare/v1.0.0-alpha.3...v1.0.0-alpha.4) (2022-12-06)


### Bug Fixes

* **chart:** fix last PR ([#22](https://github.com/camptocamp/devops-stack-module-traefik/issues/22)) ([a93184f](https://github.com/camptocamp/devops-stack-module-traefik/commit/a93184fbc5d0bf026a6210805c1fd887db372528))

## [1.0.0-alpha.3](https://github.com/camptocamp/devops-stack-module-traefik/compare/v1.0.0-alpha.2...v1.0.0-alpha.3) (2022-12-05)


### Features

* **chart:** bump Chart version to support proxy-protocol ([#16](https://github.com/camptocamp/devops-stack-module-traefik/issues/16)) ([0530512](https://github.com/camptocamp/devops-stack-module-traefik/commit/053051267ad0f52335a77b34a3134d6e9306c41c))

## [1.0.0-alpha.2](https://github.com/camptocamp/devops-stack-module-traefik/compare/v1.0.0-alpha.1...v1.0.0-alpha.2) (2022-12-01)


### Bug Fixes

* **aks:** homogenize rg naming convention between modules ([bba2613](https://github.com/camptocamp/devops-stack-module-traefik/commit/bba261369503559727b492fdd0bbaf758f5111f2))
* **aks:** typo ([e6778be](https://github.com/camptocamp/devops-stack-module-traefik/commit/e6778be72ba8ee19837ce707b396cfc0a4fda726))
* separate DNS zone and cluster resource groups ([95c9633](https://github.com/camptocamp/devops-stack-module-traefik/commit/95c96336736c1d5de579db4c0dd8e6d4b828b466))

## 1.0.0-alpha.1 (2022-11-18)


### ⚠ BREAKING CHANGES

* move Terraform module at repository root
* **sks:** remove load-balancer (back into cluster module)
* use var.cluster_info

### Features

* add aks profile ([e21da39](https://github.com/camptocamp/devops-stack-module-traefik/commit/e21da39c61ffc079a6e38cd31b6c84c50664cb01))
* add eks profile ([9910a51](https://github.com/camptocamp/devops-stack-module-traefik/commit/9910a51ff5990350bcb9f587d8c2dbce9e2445d7))
* add SKS and NodePort support ([7e1f79f](https://github.com/camptocamp/devops-stack-module-traefik/commit/7e1f79f832de0209b335a0dd132c21e7b86af6fa))
* add support of scaleway ([b4ccc2e](https://github.com/camptocamp/devops-stack-module-traefik/commit/b4ccc2e40463d3b78049dd522c758aa3513da7bc))
* allow value overrides ([fb09562](https://github.com/camptocamp/devops-stack-module-traefik/commit/fb09562124232073a0500d7f4f438eaf95613821))
* make variables optional ([633ea88](https://github.com/camptocamp/devops-stack-module-traefik/commit/633ea887c5d0459842270c76440c5554569db114))
* merge with cloudposse/utils ([e878600](https://github.com/camptocamp/devops-stack-module-traefik/commit/e878600c4460b0e710c69f9eaaf8bba58dff9805))
* move profiles to submodules ([13337a2](https://github.com/camptocamp/devops-stack-module-traefik/commit/13337a251dd132cd0b4004b174f9cd49b9470ec7))
* pass helm values in HCL ([ad36585](https://github.com/camptocamp/devops-stack-module-traefik/commit/ad36585a3148ea4942f3e4ca899fdde95858566c))
* pass profiles as a list ([ee7a018](https://github.com/camptocamp/devops-stack-module-traefik/commit/ee7a0189d394726f0a518abc14959182898c5926))
* **sks:** add base_domain default ([10e849a](https://github.com/camptocamp/devops-stack-module-traefik/commit/10e849a0f47e8ef217567059026962f327cd9b0b))
* **sks:** add nlb_ip_address output ([7d28c88](https://github.com/camptocamp/devops-stack-module-traefik/commit/7d28c888fc09ff96f2371b6146599b806d17791f))
* **sks:** create NLB ([426b494](https://github.com/camptocamp/devops-stack-module-traefik/commit/426b4948542ad7785c4fa43aa3561900e293eadc))
* **sks:** remove load-balancer (back into cluster module) ([4f1a28b](https://github.com/camptocamp/devops-stack-module-traefik/commit/4f1a28bcd06571b93a5a2d1ec256bc8c4b15ad60))
* use argocd_namespace as variable ([2eef211](https://github.com/camptocamp/devops-stack-module-traefik/commit/2eef21190746c4d5584002c9c4ee0fbc82b2cd43))


### Bug Fixes

* add extra-variables.tf ([637fcdb](https://github.com/camptocamp/devops-stack-module-traefik/commit/637fcdbc16e3ae367852b65601ba76699913f9ad))
* **aks:** add resource_group_name variable ([7582dd3](https://github.com/camptocamp/devops-stack-module-traefik/commit/7582dd31b4ec714eff2349e5ce672dae70ad4491))
* **aks:** compute dns ([5399f91](https://github.com/camptocamp/devops-stack-module-traefik/commit/5399f9132ccaf78db4e95210edc403cc24dfdfb1))
* **aks:** sym link to version so providers get declared ([a6526f5](https://github.com/camptocamp/devops-stack-module-traefik/commit/a6526f5168ee92856632c2f9e1e765111b0872b6))
* bump to chart version 15 ([9c2b44d](https://github.com/camptocamp/devops-stack-module-traefik/commit/9c2b44dcaaccb733aec70b2aa404cb82791dd1fa))
* do not delay Helm values evaluation ([0ee90ec](https://github.com/camptocamp/devops-stack-module-traefik/commit/0ee90ec9a1aea19f96ab473d79a496be14376b17))
* Fix infinite redirection ([9f9b60b](https://github.com/camptocamp/devops-stack-module-traefik/commit/9f9b60b0b7f56d6ba32777cf4f36aa978145f7e6))
* merge extra_yaml in app values ([0819118](https://github.com/camptocamp/devops-stack-module-traefik/commit/08191188c358437a9e44a0792a31484a5f610c22))
* README ([c8ab992](https://github.com/camptocamp/devops-stack-module-traefik/commit/c8ab9926f322833a93c23e9edd84d66b199584a2))
* remove deprecated variable azure_dns_label_name ([83acc01](https://github.com/camptocamp/devops-stack-module-traefik/commit/83acc018aaa8be9f9b8942f7a06d898873567b04))
* **scaleway:** add output to scaleway ([8ca13d2](https://github.com/camptocamp/devops-stack-module-traefik/commit/8ca13d2500f874c8c781622008a1dd15173e5a90))
* **sks:** add versions.tf ([ef39596](https://github.com/camptocamp/devops-stack-module-traefik/commit/ef39596c07522dbc9d24353791477903e309b68d))
* use ClusterIP for eks ([c1b83a6](https://github.com/camptocamp/devops-stack-module-traefik/commit/c1b83a6061ac445a31efe9c8297a85b187f10fc2))
* values.tmpl.yaml reference in sub-modules ([e4e1084](https://github.com/camptocamp/devops-stack-module-traefik/commit/e4e1084fc1aa39227ca46d89be023d4c66b35d69))
* wait for app removel before deleting the project ([c1c162c](https://github.com/camptocamp/devops-stack-module-traefik/commit/c1c162c5fd6e7c8f65c9b4095a13489640fdfe2e))
* work around argocd terraform provider default values ([88c5ccc](https://github.com/camptocamp/devops-stack-module-traefik/commit/88c5ccc48cf292e3df0f01e2234ef0b12d177e77))


### Code Refactoring

* move Terraform module at repository root ([a1798b9](https://github.com/camptocamp/devops-stack-module-traefik/commit/a1798b95b7c6d1663a3eca5a0af1a54b91625621))
* use var.cluster_info ([ee1cb82](https://github.com/camptocamp/devops-stack-module-traefik/commit/ee1cb82e0f17c8d04c3eb3a3f23e3d2938f0979c))


### Continuous Integration

* add central workflows including release-please ([#14](https://github.com/camptocamp/devops-stack-module-traefik/issues/14)) ([add1f51](https://github.com/camptocamp/devops-stack-module-traefik/commit/add1f51f59759069e57f88b93cb4b35def2e4949))
