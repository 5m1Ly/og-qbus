const fs = require('node:fs');
const path = require('node:path');

function day(day) {
	switch (day) {
		case 'Mon': return 'Monday';
		case 'Tue': return 'Tuesday';
		case 'Wed': return 'Wednesday';
		case 'Thu': return 'Thursday';
		case 'Fri': return 'Friday';
		case 'Sat': return 'Saturday';
		case 'Sun': return 'Sunday';
	}
}

function month(month) {
	switch (month) {
		case 'Jan': return 'January';
		case 'Feb': return 'February';
		case 'Mar': return 'March';
		case 'Apr': return 'April';
		case 'Jun': return 'June';
		case 'Jul': return 'July';
		case 'Aug': return 'August';
		case 'Sep': return 'September';
		case 'Oct': return 'October';
		case 'Nov': return 'November';
		case 'Dec': return 'December';
		default: return month;
	}
}

class File {
	constructor(filepath, stat) {
		this.path = filepath;
		this.dir = path.dirname(filepath);
		this.file = path.basename(filepath);
		this.ext = path.extname(filepath);
		this.stat = stat;
	}

	modified() {
		return this.stat.mtime;
	}

	mdTableRow() {
		const m = this.modified().toString().split(' ');
		const dir = this.dir.replaceAll('\\', '/').replaceAll('[', '\\[').replaceAll(']', '\\]');
		// console.log(mod);
		// return ''
		return `\n| ${this.file} | ${day(m[0])} ${m[2]}, ${month(m[1])}, ${m[3]} | ${m[4]} | ${dir} | ${this.stat.size} |`;
	}
}

let dircount = 0;

function gatherFileInfo(parent = 'server', current = 'resources', depth = 0) {
	const dir = path.join(parent, current);
	const stat = fs.statSync(dir);

	let files = [];

	if (stat.isFile()) {
		return [new File(dir, stat)];
	} else if (stat.isDirectory()) {
		dircount++;
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

const files = gatherFileInfo().sort((f1, f2) => f1.modified() - f2.modified());

let markdown = `# All files and modification dates in the server/resources directory

> **Some stats of the resources directory:**
> total files: ${files.length}
> total directories: ${dircount}
> time format: Central European Summer Time (CEST, GMT+2)

| file | last mod date | last mod time | size | directory |
| :--- | ------------: | ------------: | :--: | :-------- |`;

for (const file of files) {
	markdown += file.mdTableRow();
}

fs.writeFileSync(path.join(__dirname, 'modification_dates.md'), markdown);
