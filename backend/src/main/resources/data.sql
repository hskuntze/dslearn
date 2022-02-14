INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Black', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp Spring React', 'https://i.imgur.com/ghvPYPA.png', 'https://i.imgur.com/EpIGcR4.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-03-01T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-03-01T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-01T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-01T03:00:00Z', 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Seja bem-vindo(a) a plataforma!', TIMESTAMP WITH TIME ZONE '2020-12-01T15:32:16Z', false, 'https://learn.devsuperior.com', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Seja bem-vindo(a) a plataforma!', TIMESTAMP WITH TIME ZONE '2020-01-03T09:11:59Z', false, 'https://learn.devsuperior.com', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Seja bem-vindo(a) a plataforma!', TIMESTAMP WITH TIME ZONE '2020-05-18T17:44:33Z', false, 'https://learn.devsuperior.com', 3);