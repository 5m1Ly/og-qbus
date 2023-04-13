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
		this.file = path.basename(filepath);
		this.ext = path.extname(filepath);
		this.size = stat.size;
		this.stat = stat;

		// should be modified
		this.dir = path.dirname(filepath);
		this.mdate = stat.mtime.toString().split(' ');

		// change day and month to full name
		this.mdate[0] = day(this.mdate[0]);
		this.mdate[1] = month(this.mdate[1]);

		// change dir string for markdown table
		this.dir = this.dir.replaceAll('\\', '/');

		// escape brackets if they exist
		if (this.dir.includes('[')) {
			this.dir = this.dir.replaceAll('[', '\\[');
		}
		if (this.dir.includes(']')) {
			this.dir = this.dir.replaceAll(']', '\\]');
		}

	}

	modified() {
		return this.stat.mtime;
	}

	date() {
		return `${this.mdate[0]} ${this.mdate[2]}, ${this.mdate[1]}, ${this.mdate[3]}`;
	}

	time() {
		return this.mdate[4];
	}

	markdownTableRow() {
		return `\n| ${this.file} | ${this.date()} | ${this.time()} | ${this.dir} | ${this.size} |`;
	}
}

module.exports = File;
