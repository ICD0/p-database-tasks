insert into auth.users (user_id, username, email, creation_at, updated_at, is_active)
values  ('41285662-99db-4f53-9ceb-aa29461d5cc3', 'user', 'uare@gmail.com', '2023-11-23 07:44:34.954728', '2023-11-23 07:44:34.954728', true),
        ('c01fce32-4390-47c3-977d-baba8827f396', 'us11er', 'uadawdare@gmail.com', '2023-11-23 07:48:20.201302', '2023-11-23 07:48:20.201302', true),
        ('56b21b5a-a907-4975-ae47-2971c9e42891', 'us12311er', 'ua123123dawdare@gmail.com', '2023-11-23 07:48:54.181172', '2023-11-23 07:48:54.181172', true),
        ('e5ab1696-283b-4fe8-9880-a5ecb7b453f3', 'us12213311er', 'u21321a123123dawdare@gmail.com', '2023-11-23 07:49:23.676294', '2023-11-23 07:49:23.676294', true),
        ('4fc16dcd-c1e3-4682-b688-2ac44f141f3a', 'u123s12213311er', 'u3321321a1233123dawdare@gmail.com', '2023-11-23 07:50:38.203300', '2023-11-23 07:50:38.203300', true),
        ('8cfab101-b116-4089-8d4c-03ace203b0f3', 'u123sw13212213311er', 'u33213221ead1a1233123dawdare@gmail.com', '2023-11-23 07:52:04.373086', '2023-11-23 07:52:04.373086', true),
        ('9dc23097-2818-454d-b5b4-ba3eceef8909', 'u121323sw13212213311er', 'u332132ra21ead1a1233123dawdare@gmail.com', '2023-11-23 07:53:56.718917', '2023-11-23 07:53:56.718917', true),
        ('cd7642ec-8632-4e6c-ac4c-cb3438e1b710', 'u1221323sw13212213311er', 'u1233123dawdare@gmail.com', '2023-11-23 07:56:36.819785', '2023-11-23 07:56:36.819785', true),
        ('12d731d2-6fb3-4318-a37c-bc329a961b3b', 'u1adf3212213311er', 'u123a3dawdare@gmail.com', '2023-11-23 08:00:41.465330', '2023-11-23 08:00:41.465330', true),
        ('85cf9130-c125-434d-a59c-453bb3774e66', 'u1aa12213311er', 'u123dare@gmail.com', '2023-11-23 08:10:09.296304', '2023-11-23 08:10:09.296304', true),
        ('7bca8b89-bf93-49b1-a1ff-eb2227fabc07', 'u1awd13311er', 'u12dad3dare@gmail.com', '2023-11-23 08:21:12.171414', '2023-11-23 08:21:12.171414', true),
        ('6a8a1e6b-6a2c-4407-bca5-82233472042a', 'u1adaw11er', 'u1adfad3dare@gmail.com', '2023-11-23 08:22:16.390308', '2023-11-23 08:22:16.390308', true),
        ('3d706ace-c9cb-4ed8-8d61-1aa4deeec336', 'u1adawddaw11er', 'u1adawdd3dare@gmail.com', '2023-11-23 08:25:56.407527', '2023-11-23 08:25:56.407527', true),
        ('bcca7904-253b-462e-a1d6-884d2af9379b', 'aer', 'a@gmail.com', '2023-11-23 08:26:10.501774', '2023-11-23 08:26:10.501774', true),
        ('939d6668-ade2-43df-a64a-ba11975432f2', 'ader', 'a@gmaila.com', '2023-11-23 08:29:07.559331', '2023-11-23 08:29:07.559331', true),
        ('0bf09101-a1ff-4c45-9169-cf7c18dc8d28', 'aawdwadder', 'a@gadawdamaila.com', '2023-11-23 08:30:17.470813', '2023-11-23 08:30:17.470813', true),
        ('54e3cc45-bba1-495b-b168-39c2b21324cd', 'awdf11rdwadder', 'adawdawa@gadawdamaila.com', '2023-11-23 17:49:06.053892', '2023-11-23 17:49:06.053892', true),
        ('2c036603-0770-4322-8000-c0d158387612', 'leonardo rivas', 'leonardorivas@email.com', '2023-11-26 23:39:17.392482', '2023-11-26 23:39:17.392482', true),
        ('7372f47f-a30f-4c31-be17-4b20885e2e52', 'user capy', 'capypower@email.com', '2023-11-27 06:21:55.198587', '2023-11-27 06:21:55.198587', true),
        ('f39dc63e-cfbc-4b61-b0ac-1b21402e3eae', 'Capibara Hacker1', 'capypower1@email.com', '2023-11-28 06:04:14.826788', '2023-11-28 06:04:14.826788', true);


insert into auth.user_credentials (credentials_id, hash, salt, users_user_id)
values  ('6a52054c-3731-4278-b890-f484db25c415', '$2b$12$DUvTXmjP/X4rSY9mzie7y.teZQr5xJHrc2Gw6iQkd4pXLp9kZ3.V6', '$2b$12$DUvTXmjP/X4rSY9mzie7y.', '41285662-99db-4f53-9ceb-aa29461d5cc3'),
        ('37882c04-ab62-4862-b67b-24b0b9906117', '$2b$12$qPeQsYUTMBag3e8TYysxPu67mjRCg9Nolc3Ezg798s6GG405j2rU.', '$2b$12$qPeQsYUTMBag3e8TYysxPu', 'c01fce32-4390-47c3-977d-baba8827f396'),
        ('251cb404-0833-43c4-acd8-6deaf63eb3f7', '$2b$12$b6wzig17GOwSSypt5caS0uOOVeGzLM18ThxlVtYCN5MnvUyDHU6BG', '$2b$12$b6wzig17GOwSSypt5caS0u', '56b21b5a-a907-4975-ae47-2971c9e42891'),
        ('03731b43-103a-426c-a3bc-1e674a6948f1', '$2b$12$0E0sJPuV/LUcDZFHprlRguC//8qd5cuXdqfZwPBm.AL.jN4gxw.sK', '$2b$12$0E0sJPuV/LUcDZFHprlRgu', 'e5ab1696-283b-4fe8-9880-a5ecb7b453f3'),
        ('7fe07542-747c-4d26-8ce7-76859557f8c6', '$2b$12$ghdTy9rergSzlW1T3PbnVucIJFZ8NnkDd.2N5gGbLhWlfgcsyKF1u', '$2b$12$ghdTy9rergSzlW1T3PbnVu', '4fc16dcd-c1e3-4682-b688-2ac44f141f3a'),
        ('951f3b3c-ead1-4337-8bb1-0c09297c2d75', '$2b$12$aDxGEJ.Y/oEwlvdluRsMneWb6OuDmAmoq4V4hlmC/5/sH5VA7TBM.', '$2b$12$aDxGEJ.Y/oEwlvdluRsMne', '8cfab101-b116-4089-8d4c-03ace203b0f3'),
        ('7370075b-7856-4d3c-92e2-cfcbdbebf8b5', '$2b$12$Ekok1cQzEXwV.YzQeFG56.trePF4n/ZjZ2Op3HF1t/2LtnghQNwUW', '$2b$12$Ekok1cQzEXwV.YzQeFG56.', '9dc23097-2818-454d-b5b4-ba3eceef8909'),
        ('48dafd70-3196-48e5-ad21-5eb248a05d2f', '$2b$12$BMvF8CDfvPQx5YjBQVgVXOdJKxz2DA9jbuCRMHDpSbbqYUWypr3KC', '$2b$12$BMvF8CDfvPQx5YjBQVgVXO', 'cd7642ec-8632-4e6c-ac4c-cb3438e1b710'),
        ('dc6b2fc7-7234-464d-bb03-8e0dc68b9021', '$2b$12$TYvLlDTPZiRNt7c4SFj1Eu4/Zd4MIS5v0u.1siEFm11vxDpL6RXeu', '$2b$12$TYvLlDTPZiRNt7c4SFj1Eu', '12d731d2-6fb3-4318-a37c-bc329a961b3b'),
        ('10dc7a37-4986-455f-bf95-34c03936b341', '$2b$12$HBoY5iEEHSfdOJg2Hb/.SOgPzcoUdbOvCbb1nhb9yGUEmmxYlavs.', '$2b$12$HBoY5iEEHSfdOJg2Hb/.SO', '85cf9130-c125-434d-a59c-453bb3774e66'),
        ('2d14a67a-fa90-4d96-84cd-f46efed61a24', '$2b$12$PGMJXwY4.mKFAumhlNNQlurO480kTTcTDfnrJVXZhlr5PQXcAmIeK', '$2b$12$PGMJXwY4.mKFAumhlNNQlu', '7bca8b89-bf93-49b1-a1ff-eb2227fabc07'),
        ('b7b2fd48-ab37-4fde-ad43-74914cd90e19', '$2b$12$J.wfsyyUIL1hr3asD45lv.PFcwfMVfdLTOLsHX6QkQLTv43rvtQw2', '$2b$12$J.wfsyyUIL1hr3asD45lv.', '6a8a1e6b-6a2c-4407-bca5-82233472042a'),
        ('58580596-e6f1-459e-bb60-b45c95237148', '$2b$12$jmoMoQPcmFsjb081bXCPWe.ZBRsWpdk9SRPAJqJwqwxiiBCNysf9a', '$2b$12$jmoMoQPcmFsjb081bXCPWe', '3d706ace-c9cb-4ed8-8d61-1aa4deeec336'),
        ('684891cb-8cc4-424a-b87c-fb9eb163a05e', '$2b$12$PJOP85G.p6swD74DbpRk9OSSSRwYxR2mqUzaBFSAVj6CowqqGYSXq', '$2b$12$PJOP85G.p6swD74DbpRk9O', 'bcca7904-253b-462e-a1d6-884d2af9379b'),
        ('61926351-53a4-46b3-989c-4b5440cac103', '$2b$12$eUWhQmwwSBgv7weT1DhfEOCXeNQNLVYqBwfHSvxbVxTUVrixurTfG', '$2b$12$eUWhQmwwSBgv7weT1DhfEO', '939d6668-ade2-43df-a64a-ba11975432f2'),
        ('d984ff31-f067-4530-a5d9-a6168be3eef9', '$2b$12$vMgAMCx8jfpdVTdqOuHy7OYD.UP28iRwg6GTxNU17jmZdF/MR7Uda', '$2b$12$vMgAMCx8jfpdVTdqOuHy7O', '0bf09101-a1ff-4c45-9169-cf7c18dc8d28'),
        ('20b363a9-3a4f-4697-907c-47eb55f3341d', '$2b$12$QKyMiY31v4HmGC/s8VeQC.SiMgBBKvs84El7Nk8Dku0lxcCBqjPk2', '$2b$12$QKyMiY31v4HmGC/s8VeQC.', '54e3cc45-bba1-495b-b168-39c2b21324cd'),
        ('eb7e3edd-11dd-4fa9-b6ce-016a46802d13', '$2b$12$ncyjaQzijVoX7b.69Z0y4eror370XuiYNpkUBEt2XLnJGbp2LvoS.', '$2b$12$ncyjaQzijVoX7b.69Z0y4e', '2c036603-0770-4322-8000-c0d158387612'),
        ('4e6435b7-9652-41ad-a328-6abf4f240197', '$2b$12$0TyuO6ydZEWD1xMb9NbT8uPleZrBFuh06BwdqMJGDc1cdf/3Gk9vW', '$2b$12$0TyuO6ydZEWD1xMb9NbT8u', '7372f47f-a30f-4c31-be17-4b20885e2e52'),
        ('f4036cbe-c391-4069-b74b-f5f06685719b', '$2b$12$3PbIeLtUcpGv087aue1owOD47n0iQxxDSQlaNpAOFocIsYYrJcpqG', '$2b$12$3PbIeLtUcpGv087aue1owO', 'f39dc63e-cfbc-4b61-b0ac-1b21402e3eae');
