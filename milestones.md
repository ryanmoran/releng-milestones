# Release Engineering
## Milestones

### 2015

#### July
* New Teammates: Zach Gershman & Dave Walter

#### September
* New Teammate: Jesse Alford

#### December
* New Teammate: Raina Masand

### 2016

#### January
* New Teammate: Sabath Karippullil Soopy

#### March
* New Teammate: Scott Muc

#### April
* New Teammate: Ryan Moran

* Product Delivery: ERT 1.7

* Started using golang for most of our tooling as the toolchain is simpler

	The team noticed that it had been spending a lot of work hours maintaining
	our existing Ruby tooling that would break frequently. We had some experience
	with Golang and decided that we would start to put more of our tooling into
	that language in an effort to hopefully reduce the maintenance burden.

* Introduced TDD’d CI/CD tasks

* Introduced trunk-based development flow

* Added [build-docker-images pipeline](https://github.com/pivotal-cf/pcf-releng-ci/commit/88e2f986e40e70cc443cdf9f6f12bc675b850b1e)

* Started experimenting with running CATS in parallel

* Started the [“build” pipelines](https://github.com/pivotal-cf/pcf-releng-ci/commit/93c697590acf6412d4f760cb8872b61c68fde7dc) (build/compile/tile output/upload)

* Tried to get some [metrics out of Concourse](https://github.com/pivotal-cf/pcf-releng-ci/commit/d62eb716ed267c60e6b8d5b409e90271c668d456)

* Started work to [replace vara](https://github.com/pivotal-cf/pcf-releng-ci/commit/d8b4d65cf19945bea30d879c00a1a77040f03260)

#### May
* New Teammate: Aditya Anchuri
* Former Teammates: Jesse Alford & Scott Muc
* Added [--stub-releases flag](https://github.com/pivotal-cf/pcf-releng-ci/commit/f618864832127d3118bd83e5af3b1c516fd598b4) to tile builder
* Experimented with [release spec diffing](https://github.com/pivotal-cf/pcf-releng-ci/commit/6bdc6e9ebba25736a660dee860ab1c8f062fe3d4)
* Started [building and using knit](https://github.com/pivotal-cf/pcf-releng-ci/commit/a8e08e82c076696f2aeb354354e24f12947f2f33) to patch repos
* Started using [pivnet-resource to upload ERT](https://github.com/pivotal-cf/pcf-releng-ci/commit/ac42b1ffc38382feaf8376bfb48bacaee1531fa3)
* Started experimenting with a [custom concourse dashboard](https://github.com/pivotal-cf/pcf-releng-ci/commit/7e0f63212473fed1c9145a65ce03ebb1bcbff933) (just iframes of the pipelines)
* [First inklings](https://github.com/pivotal-cf/pcf-releng-ci/commit/48827601f15b52339eaa8cb2b2fcc4d420910bc9) of what eventually became om. We needed to fetch creds from OpsMan for CATS. Started writing golang code against their API to do it.
* Started [reducing test coverage of OpenStack and vCloud](https://github.com/pivotal-cf/pcf-releng-ci/commit/9e9c029f66b8a56c1c0228cb93eaf2312830d04f)

#### June
* [CATS is being extracted](https://github.com/pivotal-cf/pcf-releng-ci/commit/a2c1f0200f288213e110029954467f5aba30d362) from the tile
* Started running [RATS](https://github.com/pivotal-cf/pcf-releng-ci/commit/b954a8c54fe0ee17d7fe774dcd9246c76bdb1ae0)
* Wanted to be able to [build tiles locally](https://github.com/pivotal-cf/pcf-releng-ci/commit/51ec05d6b50c19752431e6ba89d515a5e3be68e8)
* EOL’d [Salmon Pipelines](https://github.com/pivotal-cf/pcf-releng-ci/commit/52dabf66ef8c413b14e6fc303ee81fb9cce39ef1)
* [Metrics from Concourse](https://github.com/pivotal-cf/pcf-releng-ci/commit/53756e8b0af3384023e7da852b0d2e0b34068afb) don’t seem to be that useful
* Started storing Concourse [creds in LastPass](https://github.com/pivotal-cf/pcf-releng-ci/commit/ca80c11185495ac5e1a05ee1fef2b8a334bff587)
* Started [splitting up ERT metadata](https://github.com/pivotal-cf/pcf-releng-ci/commit/0447880e5edf43a89b4eaa350517272327b4852b) files

#### July
* Former Teammate: Sabath Karippullil Soopy
* Started using [deploy keys](https://github.com/pivotal-cf/pcf-releng-ci/commit/0153154234d0a9b23a3419a23bbf4d60faf79943) to manage access to repos
* Stopped [generating pipelines](https://github.com/pivotal-cf/pcf-releng-ci/commit/e0f8d3b80a8111399dece6f538c6b94c9073199d)

#### August
* New Teammates: Dan Wendorf & Derek Richard
* Started terraforming
  [Azure](https://github.com/pivotal-cf/pcf-releng-ci/commit/55adfe1cf0c5edfa045dea85463830eb6e5c73bb),
  [GCP](https://github.com/pivotal-cf/pcf-releng-ci/commit/803ffc5a3ab01686137a225ebb38eb25d675cece),
  and [AWS](https://github.com/pivotal-cf/pcf-releng-ci/commit/7194742769ebaeee0c40026b0f57785abf8fa924) environments
* Stopped [maintaining vara](https://github.com/pivotal-cf/pcf-releng-ci/commit/8ded60ca6ce96ece6219db37d78717c93a908796)
* Started using [terraform-resource](https://github.com/pivotal-cf/pcf-releng-ci/commit/27afd0e6eb1c8b41b3fcd023d1ef75beb70abc76)

#### September
* Stops testing [vCloud](https://github.com/pivotal-cf/pcf-releng-ci/commit/86b3698526abb51cc3e203ee61974440d47203f1)
* Upgrade pipelines start [testing app availability](https://github.com/pivotal-cf/pcf-releng-ci/commit/94552d17e90acc5c71426a01907d9a2aa74da7b8) during deploys
* Started deploying and testing [HA ERT](https://github.com/pivotal-cf/pcf-releng-ci/commit/33aeef14448212df4d470fcf5a82b7f1be29b202) configurations
* Started testing with [IPSEC configuration](https://github.com/pivotal-cf/pcf-releng-ci/commit/df151c49a527f99a34663c7d8daa515544750d98)
* Started working on [om](https://github.com/pivotal-cf/pcf-releng-ci/commit/69ad23721a749374ca80adaf4a41410b03ea31da)

#### October
* Former Teammate: Derek Richard
* Product Delivery: ERT 1.8
* Started [code signing](https://github.com/pivotal-cf/pcf-releng-ci/commit/ba41b1a3202cbb44d7ed76f0fb88bfbd44e77c99) tile builds

#### November
* New Teammate: K Wei
* Former Teammate: Dan Wendorf
* Second attempt at getting [metrics out of Concourse](https://github.com/pivotal-cf/pcf-releng-ci/commit/22b8b81d47e62ab498944f08de0b2256f6360255)

#### December
* Former Teammate: Aditya Anchuri
* Product Delivery: ERT 1.9

### 2017

#### January
* New Teammate: Kevin Kelani
* Started trying to get some [linting data](https://github.com/pivotal-cf/pcf-releng-ci/commit/bcb8e4c142440c293d17ecfa5ab71634c5c90ce9) out of built tiles
* Started running a [single CATS task](https://github.com/pivotal-cf/pcf-releng-ci/commit/8bcfa325137f647283e2e73d5b30fa9a51f61931)
* Started building the [Windows 2012 tile](https://github.com/pivotal-cf/pcf-releng-ci/commit/ab50be5f60b8ab9e8b019081cf91c1c7b857cf2b)
* Started building the [Isolation Segment tile](https://github.com/pivotal-cf/pcf-releng-ci/commit/2dab2ba41bcafa577513a2148309f8081b476dd6)
* Moved [compilers](https://github.com/pivotal-cf/pcf-releng-ci/commit/83fddf3896bc822801ad165a072d03469e2f5b4c) and
  [Concourse](https://www.pivotaltracker.com/n/projects/975916/stories/134311929) to GCP

#### February
* New Teammate: Utako Ueda
* CATS use a [CLI extracted out of the tile](https://github.com/pivotal-cf/pcf-releng-ci/commit/95158c13336beb3e5567d626e9bd7557762d10db)

#### March
* Product Deliveries: WRT2012 1.9, ERT & IST 1.10
* Started running [NATS](https://github.com/pivotal-cf/pcf-releng-ci/commit/19d53d75eac442553f7c5b7b29976e3fb256d82d)
* Started [replicating ISTs](https://github.com/pivotal-cf/pcf-releng-ci/commit/4d4e005b5119f6d8dc9c5a7eb22a79c04328348d)
* [Parallel compilation](https://github.com/pivotal-cf/pcf-releng-ci/commit/ce28cc805d4ad2202276ec1e9afa59fe420f3352) of BOSH releases

#### April
* New Teammate: Andrew Crump
* Product Delivery: WRT2012 1.10
* Stopped doing early [metadata checking](https://github.com/pivotal-cf/pcf-releng-ci/commit/adfe665e42e8dc8e80f415fad76257d509dcecf0)

#### May
* New Teammates: Josh Zarrabi & Rizwan Reza
* Former Teammate: Zach Gershman
* CATS are not extracted, [pulled and patched](https://github.com/pivotal-cf/pcf-releng-ci/commit/143e18ba54b57aacbe139c1363fcf5049662a753) instead

#### June
* Product Delivery: ERT, IST & WRT2012 1.11
* Another crack at getting [metrics out of Concourse](https://github.com/pivotal-cf/pcf-releng-ci/commit/ec2f562973399e43d036c1c8f13b161b050ef232)
* [BananaBot](https://github.com/pivotal-cf/pcf-releng-ci/commit/6ac80c389a6cc1c764a2474fa6fd637800f54393)

#### July
* Short-term Rotation: Topher Lubaway
* [Kiln](https://www.pivotaltracker.com/n/projects/975916/stories/146893767)

#### August
* Former Teammate: Raina Masand
* [Static product configuration](https://github.com/pivotal-cf/pcf-releng-ci/commit/eddef90a112e2b01b5550178aeee03df8f5a7ae9)
* [SRT](https://github.com/pivotal-cf/pcf-releng-ci/commit/d7fe6a180416b030fbf6f8a309fedca7057b2db2)
* Another [product config generation](https://github.com/pivotal-cf/pcf-releng-ci/commit/24babdba79286585857fe230224dbea6c7562968) spike
* [WRT-2016](https://www.pivotaltracker.com/n/projects/975916/stories/150489708)

#### September
* New Teammate: Michelle He
* Product Deliveries: ERT, IST & WRT2012 1.12
* Handed off terraform template repos to Infrastructure
* [Jhanda](https://www.pivotaltracker.com/n/projects/975916/stories/151449991)

#### October
* Product Delivery: SRT 1.12
* Started using our [own CA](https://www.pivotaltracker.com/n/projects/975916/stories/130921853) to generate environment certificates

#### November
* New Teammates: Ken Chen, Lyle Franklin & James Myers
* [Winfs-injector](https://www.pivotaltracker.com/n/projects/975916/stories/152648736)

#### December
* New Teammate: Dave McClure
* Former Teammate: James Myers
* Product Deliveries: PAS, SRT, IST & WRT2012 2.0
* Started [generating build pipelines](https://github.com/pivotal-cf/pcf-releng-ci/commit/1038b0909c5b865653982afa1e2b6fc0945690d5)
* Created some [PR pipelines](https://github.com/pivotal-cf/pcf-releng-ci/commit/e1b414af5589e6a89b87626326b27b3da1cca1a0)
* [Update tracker](https://www.pivotaltracker.com/n/projects/975916/stories/152869215) when pipelines pass
* Started running [P-DRATS](https://www.pivotaltracker.com/n/projects/975916/stories/151704680)

### 2018

#### January
* Former Teammate: Utako Ueda
* Started using [uptimer](https://www.pivotaltracker.com/n/projects/2145041/stories/153485016) in upgrade pipelines

#### February
* [Fly-all](https://github.com/pivotal-cf/pcf-releng-ci/commit/83ce92ef1652a8d606260d6df24aa14a4e13cdba)
* Started [templating CATS config](https://www.pivotaltracker.com/n/projects/2145041/stories/155044884)
* Started [testing tile javascript migrations](https://www.pivotaltracker.com/n/projects/2145041/stories/152705046)
* Experimented with [PM acceptance pipelines](https://www.pivotaltracker.com/n/projects/2145041/stories/155042502)

#### March
* Product Deliveries: PAS, SRT, IST, WRT2012 & WRT2016 2.1
* Started using [Credhub](https://www.pivotaltracker.com/n/projects/2145041/stories/155632343) to store Concourse credentials
* [Bump, don’t patch](https://www.pivotaltracker.com/n/projects/2145041/stories/155909452)
* Started [testing manifest configurations](https://www.pivotaltracker.com/n/projects/2145041/stories/155539867) in CI
* Stopped [printing credentials](https://www.pivotaltracker.com/n/projects/2145041/stories/155958408) in CI
* Built out a [“next” pipeline](https://www.pivotaltracker.com/n/projects/2145041/stories/155713834)
* Started [templating deployment pipelines](https://github.com/pivotal-cf/pcf-releng-ci/commit/d4ed3c8f2ab8ccb3292d69d2a5dab6ee59d30449)

#### April
* New Teammate: Caitlyn Yu
* Former Teammate: Ryan Moran
