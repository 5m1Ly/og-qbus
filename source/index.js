const fs = require('node:fs');
const path = require('node:path');

const File = require('./File');

let dircount = 0;
let catagories = 0;
let resources = 0;
let size = 0;

function gatherFileInfo(parent = 'server', current = 'resources', depth = 0) {
	const dir = path.join(parent, current);
	const stat = fs.statSync(dir);
	let files = [];
	if (stat.isFile()) {
		if (current === "__resource.lua") {
			// const resource = path.basename(path.dirname(dir))
			resources++;
		}
		size += stat.size;
		return [new File(dir, stat)];
	} else if (stat.isDirectory()) {
		dircount++;
		if (current.match(/^\[.*\]$/)) {
			catagories++;
		}
		const content = fs.readdirSync(dir);
		for (const item of content) {
			let rfiles = gatherFileInfo(dir, item, depth + 1);
			files.push(...rfiles);
		}
	} else {
		console.log('there is no file nor directory to gather information about at:', dir);
	}
	return files;
}

const files = gatherFileInfo().sort((f1, f2) => (f1.modified() - f2.modified()));

let markdown = `# All files and modification dates in the server/resources directory

> **Some stats of the resources directory:**
> files: ${files.length}
> directories: ${dircount}
>
> catagories: ${catagories}
> resources: ${resources}
>
> size: ${Math.ceil(size / 10000000) / 100}gb
>
> time format: Central European Summer Time (CEST, GMT+2)

| file | last mod date | last mod time | size | directory |
| :--- | ------------: | ------------: | :--: | :-------- |`;

for (const file of files) {
	markdown += file.markdownTableRow();
}

fs.writeFileSync(path.join(__dirname, '../modification_dates.md'), markdown);
