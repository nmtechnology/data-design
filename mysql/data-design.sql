drop table if exists trackPlays;
drop table if exists track;
drop table if exists profile;

create table profile(
	profileId BINARY(16),
	profileUserName VARCHAR(32),
	profileComments VARCHAR(24),
	profilePlays VARCHAR(32),
	PRIMARY KEY(profileId)
);

create table track(
	trackId VARCHAR(255),
	trackProfileId CHAR(32),
	trackStatsId VARCHAR(16),
	FOREIGN KEY(trackProfileId) references profile(profileId),
	FOREIGN KEY(trackStatsId) references stats(statsId),
	PRIMARY KEY(trackId)
);

create table stats(
	statsId VARCHAR(32),
	statsProfileId VARCHAR(32),
	FOREIGN KEY(statsProfileId) references profile(profileId) ,
	PRIMARY KEY(statsId)
);