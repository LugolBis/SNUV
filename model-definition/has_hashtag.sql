-- Création de la table
create table HasHashtag(
    idpost number(6),
    hashtag varchar(140),
    primary key (idpost, hashtag),
    foreign key (idpost) references Post(idpost) on delete cascade,
    foreign key (hashtag) references Hashtag(content) on delete cascade
);