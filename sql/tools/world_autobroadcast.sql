delete from mangos_string where entry between 50000 and 50006;
delete from autobroadcast where string_id between 50000 and 50006;

replace into mangos_string (entry, content_default) values

(50000, 'Delete your WDB folder regularly. This is your game cache, and deleting it can often fix minor game glitches. Always try this before submitting a ticket.'),
(50001, 'If you want to help our project, check our shop for donation rewards! Visit the donation page on our website for more info.'),
(50002, 'Keep up to date with the news and join our Discord server!'),
(50003, 'We encourage everyone to change their password regularly. If you think you have ever used your Turtle WoW password in different private servers we urge you to change it as soon as possible.'),
(50004, 'All gold transactions are heavily monitored. Any form of RMT will result in severe actions taken against all parties involved. Please, don\'t support individuals who are actively harming our server.'),
(50005, 'Tune in to Everlook Broadcasting Co. Radio to delve into Azeroth\'s rich lore, enjoy its finest melodies, and stay updated on the products you never knew you needed!');

replace into autobroadcast (string_Id) values (50000),(50001),(50002),(50003),(50004),(50005);

UPDATE `mangos_string` SET `content_loc4` = '定期删除WDB文件夹。这是游戏缓存，删除它通常可以修复一些小的游戏故障。在提交工单之前，请务必尝试此方法。' WHERE `entry` = 50000;
UPDATE `mangos_string` SET `content_loc4` = 'Join /english to connect with English-speaking players!' WHERE `entry` = 50001;
UPDATE `mangos_string` SET `content_loc4` = '保持与最新消息的同步，并加入我们的KOOK服务器！' WHERE `entry` = 50002;
UPDATE `mangos_string` SET `content_loc4` = '我们鼓励每个人定期更改密码。如果您认为您曾在其他私人服务器上使用过乌龟魔兽的密码，请尽快更改密码。' WHERE `entry` = 50003;
UPDATE `mangos_string` SET `content_loc4` = '所有金币交易都受到严格监控。任何形式的RMT交易将对所有涉及方采取严厉行动。请不要支持那些正在损害我们服务器的个人。' WHERE `entry` = 50004;
-- UPDATE `mangos_string` SET `content_loc4` = '收听永望广播公司收音机，深入了解艾泽拉斯丰富的故事，欣赏最美妙的旋律，并及时了解你以前不知道需要的产品！' WHERE `entry` = 50005;
UPDATE `mangos_string` SET `content_loc4` = '最终促销 - 截至7月2日，所有捐赠奖励半价出售。这是最后一次以50%折扣购买物品的机会，未来我们将采取更小规模的促销活动并增加代币奖励。我们主要提供公平游戏的装饰性内容，当前在财政上面临一些挑战，但所有捐赠都将用于开发和服务器维护。' WHERE `entry` = 50005;
