const fs = require('node:fs');
const path = require('node:path');

class Resource {

	constructor(name) {
		this.name = name;
		this.files = 0;
		this.size = 0;
	}

	addFile() {
		this.files++;
	}

	addSize(size) {
		this.size += size;
	}

	setModified(modified) {
		if (!this.modifications) {
			this.modifications = {
				latest: modified,
				oldest: modified,
			}
		} else if (modified > this.modifications.latest) {
			this.modifications.latest = modified;
		} else if (modified < this.modifications.oldest) {
			this.modifications.oldest = modified;
		}
	}
}

function gatherResourceInfo(current = 'server/resources', resource = null, resources = new Map(), depth = 0) {

	const currentStats = fs.statSync(current);

	if (currentStats.isDirectory()) {

		const content = fs.readdirSync(current);

		if (resource == null && content.includes('__resource.lua')) {
			resource = path.basename(current);
		}

		for (const item of content) {
			resources = gatherResourceInfo(path.join(current, item), resource, resources, depth + 1);
		}

	}

	if (currentStats.isFile()) {

		const instance = resources.has(resource) ? resources.get(resource) : new Resource(resource);

		instance.addFile();
		instance.addSize(currentStats.size);
		instance.setModified(currentStats.mtime);

		resources.set(resource, instance)

	}

	if (depth) {
		return resources;
	} else {
		return [...resources.values()];
	}

}

const resources = gatherResourceInfo().sort((r1, r2) => (r1.modifications.oldest - r2.modifications.oldest));

let markdown = `# All files and modification dates in the server/resources directory

> **Some stats of the resources directory:**<br/>
> files: 11803<br/>
> directories: 788<br/>
>
> catagories: 52<br/>
> resources: 244
>
> size: 6.63gb
>
> time format: Central European Summer Time (CEST, GMT+2)

| resource | files         | size | latest modification | oldest modification |
| :------- | ------------: | ---: | ------------------: | ------------------: |`;

const gigabyte = 1000000000;
const megabyte = 1000000;
const kilobyte = 1000;

for (const resource of resources) {

	const latest = new Date(resource.modifications.latest).toLocaleDateString('en-us', { year: "numeric", month: "short", day: "numeric" });
	const oldest = new Date(resource.modifications.oldest).toLocaleDateString('en-us', { year: "numeric", month: "short", day: "numeric" });

	if (resource.size > gigabyte) {
		resource.size = `${(resource.size / gigabyte).toFixed(2)}gb`;
	} else if (resource.size > megabyte) {
		resource.size = `${(resource.size / megabyte).toFixed(2)}mb`;
	} else if (resource.size > kilobyte) {
		resource.size = `${(resource.size / kilobyte).toFixed(2)}kb`;
	} else {
		resource.size = `${resource.size}b`;
	}

	markdown += `\n| ${resource.name} | ${resource.files} | ${resource.size} | ${latest} | ${oldest} |`;
}

fs.writeFileSync(path.join(__dirname, '../modification_dates.md'), markdown);
