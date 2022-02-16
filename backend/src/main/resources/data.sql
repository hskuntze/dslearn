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

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Seja bem-vindo(a) a plataforma!', TIMESTAMP WITH TIME ZONE '2020-12-01T15:32:16Z', false, '/offers/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Seja bem-vindo(a) a plataforma!', TIMESTAMP WITH TIME ZONE '2020-01-03T09:11:59Z', false, '/offers/1', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Seja bem-vindo(a) a plataforma!', TIMESTAMP WITH TIME ZONE '2020-05-18T17:44:33Z', false, '/offers/1', 3);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Aulas Spring React', 'Todas as aulas do bootcamp Spring React', 1, 'https://i.imgur.com/ghvPYPA.png', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Fórum', 'Poste e retire suas dúvidas aqui', 2, 'https://www.teclasap.com.br/wp-content/uploads/2012/10/forum.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Link do Discord', 'Discord dos alunos para as lives', 3, 'https://tekmods.com/wp-content/uploads/2021/11/download-discord-voice-amp-video-chat.png', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum dui dui, pretium tristique tortor.', 1, 'https://us.123rf.com/450wm/kyryloff/kyryloff2003/kyryloff200300431/143461895-chapter-1-design-template-can-be-used-for-books-design-or-tabs-stock-vector-illustration-isolated.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum dui dui, pretium tristique tortor.', 2, 'https://us.123rf.com/450wm/kyryloff/kyryloff2003/kyryloff200300432/143461827-chapter-2-design-template-can-be-used-for-books-design-or-tabs-stock-vector-illustration-isolated.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum dui dui, pretium tristique tortor.', 3, 'https://us.123rf.com/450wm/kyryloff/kyryloff2003/kyryloff200300421/143453160-chapter-3-design-template-can-be-used-for-books-design-or-tabs-stock-vector-illustration-isolated.jpg', 1, null);

INSERT INTO tb_enrollment (enroll_Moment, refund_Moment, available, only_Update, user_id, offer_id) VALUES (TIMESTAMP WITH TIME ZONE '2020-03-01T09:00:00Z', null, true, false, 1, 1);
INSERT INTO tb_enrollment (enroll_Moment, refund_Moment, available, only_Update, user_id, offer_id) VALUES (TIMESTAMP WITH TIME ZONE '2020-03-01T09:00:00Z', null, true, false, 2, 1);