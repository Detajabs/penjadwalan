
-- Table: kegiatan
CREATE TABLE kegiatan ( 
    kid       INTEGER PRIMARY KEY AUTOINCREMENT
                      NOT NULL,
    tingkatid INTEGER NOT NULL,
    jam       INT     NOT NULL
                      DEFAULT '2',
    kelasid   INTEGER NOT NULL,
    jid       INTEGER NOT NULL,
    pid       INTEGER NOT NULL,
    mpid      INTEGER NOT NULL,
    CONSTRAINT 'fk_kegiatan_jurusan' FOREIGN KEY ( jid ) REFERENCES jurusan ( jid ) ON DELETE CASCADE
                                                                                        ON UPDATE CASCADE,
    CONSTRAINT 'fk_kegiatan_pengajar' FOREIGN KEY ( pid ) REFERENCES pengajar ( pid ) ON DELETE CASCADE
                                                                                          ON UPDATE CASCADE,
    CONSTRAINT 'fk_kegiatan_matapelajaran' FOREIGN KEY ( mpid ) REFERENCES matapelajaran ( mpid ) ON DELETE CASCADE
                                                                                                      ON UPDATE CASCADE,
    CONSTRAINT 'fk_kegiatan_kelas' FOREIGN KEY ( kelasid ) REFERENCES kelas ( kelasid ) ON DELETE RESTRICT
                                                                                            ON UPDATE CASCADE,
    CONSTRAINT 'fk_kegiatan_tingkat' FOREIGN KEY ( tingkatid ) REFERENCES tingkat ( tingkatid ) ON DELETE CASCADE
                                                                                                    ON UPDATE CASCADE 
);

INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (17, 0, 2, 0, 6, 2, 2);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (18, 0, 2, 0, 6, 3, 4);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (19, 0, 2, 0, 6, 8, 6);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (20, 0, 2, 0, 6, 14, 11);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (21, 0, 2, 0, 6, 15, 15);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (22, 0, 2, 0, 6, 10, 10);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (23, 0, 2, 0, 6, 16, 14);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (24, 0, 2, 0, 6, 17, 8);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (25, 0, 2, 0, 6, 7, 3);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (26, 0, 2, 0, 6, 3, 4);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (27, 0, 2, 0, 6, 18, 1);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (28, 0, 2, 0, 6, 19, 7);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (29, 0, 2, 0, 6, 20, 13);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (30, 0, 2, 0, 6, 21, 8);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (31, 0, 2, 0, 6, 22, 12);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (32, 0, 2, 0, 6, 23, 16);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (33, 0, 2, 0, 7, 3, 4);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (34, 0, 2, 0, 7, 4, 2);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (35, 0, 2, 0, 7, 8, 6);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (36, 0, 2, 0, 7, 10, 10);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (37, 0, 2, 0, 7, 15, 15);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (38, 0, 2, 0, 7, 14, 11);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (39, 0, 2, 0, 7, 24, 3);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (40, 0, 2, 0, 7, 23, 16);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (41, 0, 2, 0, 7, 22, 12);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (42, 0, 2, 0, 7, 17, 8);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (43, 0, 2, 0, 7, 3, 4);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (44, 0, 2, 0, 7, 16, 14);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (45, 0, 2, 0, 7, 19, 7);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (46, 0, 2, 0, 7, 21, 8);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (47, 0, 2, 0, 7, 20, 13);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (48, 0, 2, 0, 7, 25, 1);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (50, 0, 2, 0, 8, 5, 7);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (51, 0, 2, 0, 8, 6, 5);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (52, 0, 2, 0, 6, 6, 5);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (53, 0, 2, 0, 7, 6, 5);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (56, 0, 2, 0, 8, 7, 3);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (57, 0, 2, 0, 8, 13, 4);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (58, 0, 2, 0, 8, 12, 8);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (59, 0, 2, 0, 8, 2, 2);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (60, 0, 2, 0, 8, 15, 15);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (61, 0, 2, 0, 8, 26, 17);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (62, 0, 2, 0, 8, 12, 8);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (63, 0, 2, 0, 8, 27, 12);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (64, 0, 2, 0, 8, 14, 11);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (65, 0, 2, 0, 8, 13, 4);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (66, 0, 2, 0, 8, 16, 14);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (67, 0, 2, 0, 8, 4, 6);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (68, 0, 2, 0, 8, 28, 10);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (69, 0, 2, 0, 8, 25, 1);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (70, 0, 2, 0, 8, 29, 16);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (71, 0, 2, 0, 8, 20, 13);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (72, 0, 2, 1, 4, 6, 5);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (73, 0, 2, 1, 4, 19, 7);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (74, 0, 2, 1, 4, 23, 16);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (75, 0, 2, 1, 4, 12, 8);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (76, 0, 2, 1, 4, 3, 4);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (77, 0, 2, 1, 4, 3, 4);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (78, 0, 2, 1, 4, 14, 11);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (79, 0, 2, 1, 4, 22, 12);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (80, 0, 2, 1, 4, 12, 8);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (81, 0, 2, 1, 4, 2, 2);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (82, 0, 2, 1, 4, 20, 13);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (83, 0, 2, 1, 4, 30, 15);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (84, 0, 2, 1, 4, 26, 1);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (85, 0, 2, 1, 4, 7, 3);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (86, 0, 2, 1, 4, 8, 6);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (87, 0, 2, 1, 4, 16, 14);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (88, 0, 2, 1, 4, 10, 10);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (89, 0, 2, 2, 4, 7, 3);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (90, 0, 2, 2, 4, 30, 15);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (91, 0, 2, 2, 4, 6, 5);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (92, 0, 2, 2, 4, 19, 7);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (93, 0, 2, 2, 4, 3, 4);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (94, 0, 2, 2, 4, 8, 6);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (95, 0, 2, 2, 4, 18, 1);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (96, 0, 2, 2, 4, 16, 14);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (97, 0, 2, 2, 4, 17, 8);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (98, 0, 2, 2, 4, 2, 2);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (99, 0, 2, 2, 4, 22, 12);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (100, 0, 2, 2, 4, 20, 13);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (101, 0, 2, 2, 4, 14, 11);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (102, 0, 2, 2, 4, 3, 4);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (103, 0, 2, 2, 4, 2, 2);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (104, 0, 2, 2, 4, 31, 10);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (105, 0, 2, 2, 4, 23, 16);
INSERT INTO [kegiatan] ([kid], [tingkatid], [jam], [kelasid], [jid], [pid], [mpid]) VALUES (106, 0, 2, 2, 4, 21, 8);
