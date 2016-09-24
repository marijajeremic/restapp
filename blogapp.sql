-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2016 at 07:23 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `image`, `content`, `user_id`, `date`) VALUES
(62, 'Edit sa Ajaxom', '["57e32a41d52251.39890308-images.jpg","57e32a41d572e2.16709652-stock-photo-php-concept-blue-background-with-blue-text-214586860.jpg"]', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque hendrerit orci nunc, et aliquam lorem hendrerit ac. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce in magna nibh. In hac habitasse platea dictumst. Duis tristique facilisis congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam ut egestas nisi.\r\n\r\nCurabitur placerat, tortor et ultricies posuere, lectus metus viverra arcu, quis volutpat magna velit quis lorem. Donec eu nunc sagittis, maximus diam non, porttitor elit. In vitae pharetra magna. Sed vitae egestas massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac libero nec leo tempus pharetra at eget est. Mauris ultricies tincidunt leo vitae fringilla. Nulla dolor neque, vestibulum et ligula in, dapibus auctor ex. Duis rutrum, lectus a luctus condimentum, enim lectus fringilla eros, mollis convallis leo turpis eu odio.\r\n\r\nIn dictum dictum viverra. Nunc fermentum diam tellus, et efficitur nulla gravida sit amet. Etiam libero sapien, luctus ut venenatis sit amet, ornare ut risus. Nullam blandit egestas tincidunt. Curabitur viverra, tellus id aliquam tempus, metus nisl feugiat erat, vitae tincidunt felis tellus vel leo. Donec lobortis purus velit, ut consectetur sapien rutrum vel. Maecenas eu nunc turpis. Pellentesque pulvinar nisi et urna aliquam suscipit. Maecenas vitae pretium augue.\r\n\r\nDonec elementum velit augue, ut accumsan dui dapibus id. Suspendisse eget vulputate dui, et interdum tellus. Mauris velit diam, aliquet quis risus in, pellentesque tincidunt risus. Nulla facilisi. Vivamus iaculis nisi id semper dapibus. Ut ullamcorper justo ut sollicitudin aliquet. Fusce congue euismod risus, eu efficitur lorem mattis eu. Nullam neque neque, mollis a mattis et, porttitor id dui. Duis blandit suscipit eros et accumsan. Etiam et risus eu odio lacinia maximus sit amet at velit. Cras ullamcorper risus sed eros lobortis congue. Quisque rutrum nibh vel orci luctus, sed ultricies lectus gravida.\r\n\r\nCurabitur vestibulum ut tellus et ornare. Donec quis dolor vel quam consectetur lacinia. Praesent venenatis in nisi sit amet vehicula. Aenean aliquet feugiat sodales. Nunc ac purus vitae metus blandit feugiat. Vivamus efficitur scelerisque tempor. Morbi pretium odio quis pulvinar porta. Donec mi sapien, tincidunt facilisis vulputate ac, vehicula non diam. Duis rutrum nibh et egestas vestibulum. Ut bibendum leo id erat mollis finibus.', 20, '2016-09-22 00:48:01'),
(63, 'Editovan naslov', '["57e3fbe7cf55d8.74162342-php-concept-red-background-blue-text-44227744.jpg","57e3fbe7cfa087.72951034-stock-photo-binary-code-with-php-and-magnifying-lens-on-black-background-308059304.jpg"]', 'Da pokusamo i sa contentom....Da pokusamo i sa contentom....Da pokusamo i sa contentom....Da pokusamo i sa contentom....Da pokusamo i sa contentom....Da pokusamo i sa contentom....', 20, '2016-09-22 15:42:31'),
(66, 'Lorem ipsum', '["57e457897e5829.41798036-jour87ix9aoikm1zpjct.jpg","57e457897e8964.97271780-Travel_around_the_world1.jpg","57e457897eb444.56338011-travel_suitcase-1200x500.jpg","57e457897edb83.39071582-Travel-and-Live-Free-Meetup-Group.jpg","57e457897f0238.95316821-travel-industry-air.jpg","57e457897f2704.05777706-travel-see-more.jpg"]', 'Nullam non convallis ligula, sit amet ultricies orci. Quisque dictum neque id ex posuere consequat eget nec ante. Aliquam erat volutpat. Vestibulum pellentesque tellus aliquet erat iaculis, ac tempor dolor ornare. Sed sodales id justo vitae placerat. Maecenas pharetra felis urna, nec dictum mauris fermentum nec. Nam iaculis arcu et euismod auctor. Integer eu massa sit amet metus condimentum pretium. In malesuada, mauris eget lobortis dignissim, tellus nunc bibendum lorem, tincidunt tempus lacus orci ac arcu. Etiam lectus leo, facilisis eget felis sed, hendrerit gravida odio. Vivamus interdum maximus augue, sed volutpat mi accumsan quis. Sed ex augue, ornare viverra risus nec, cursus finibus ex. Proin eget leo ipsum.\r\n\r\nSed et euismod ligula. Vivamus at massa vitae nibh tempor molestie id sed arcu. Morbi id eros sit amet quam mattis aliquet. Cras risus diam, dictum sed sapien in, fermentum accumsan nunc. Sed hendrerit fringilla nunc, nec volutpat lorem ultrices vel. Aliquam erat volutpat. Etiam eget luctus nulla. Mauris lacinia dolor velit, quis venenatis turpis lacinia a. Suspendisse ultricies felis ac ornare porta. Suspendisse sed ex ac massa tristique congue. Cras nec velit viverra, convallis lorem vitae, dapibus felis.\r\n\r\nInteger sem ligula, laoreet ac turpis eget, congue blandit lectus. Duis egestas dapibus ante, a vestibulum augue molestie sit amet. Praesent lacus arcu, scelerisque et risus ultricies, fermentum faucibus velit. Vivamus sed rhoncus risus. In lacus neque, elementum eu tristique ac, dapibus sit amet eros. Quisque enim velit, sodales eget mollis at, interdum sit amet odio. Etiam quis massa vitae eros porta semper', 20, '2016-09-22 22:13:29'),
(67, 'Test ', '["57e49677a4ee33.85954926-IMAG0067.jpg","57e49677a51962.65884165-IMAG0068.jpg","57e49677a53b07.21548651-IMAG0069.jpg","57e49677a57849.70152099-IMAG0070.jpg","57e49677a59929.44971381-IMAG0071.jpg"]', 'Category: Attribute\r\nThe CSS specification allows elements to be identified by their attributes. While not supported by some older browsers for the purpose of styling documents, jQuery allows you to employ them regardless of the browser being used.\r\n\r\nWhen using any of the following attribute selectors, you should account for attributes that have multiple, space-separated values. Since these selectors see attribute values as a single string, this selecto', 20, '2016-09-23 02:41:59'),
(69, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '["57e4a81d1edfd6.63352425-images.jpg","57e4a81d1f1929.88864441-img.jpg","57e4a81d1f3b98.97657125-kalemegdan.jpg"]', 'Vestibulum quis pellentesque nulla, eu semper lectus. Vivamus ac imperdiet lectus, ac feugiat nulla. Phasellus sagittis egestas arcu sed tempus. Ut ut sapien sit amet erat eleifend fringilla. Phasellus dapibus urna sollicitudin justo pretium luctus. Curabitur dictum cursus neque, ut accumsan est. Pellentesque ullamcorper dui quis imperdiet scelerisque. Integer eu elementum urna, at pulvinar justo. Aenean ullamcorper lacinia viverra. Aliquam commodo, tortor a ultricies tristique, massa purus pulvinar erat, id tincidunt orci justo vel ex. Cras tincidunt lacinia turpis, sed molestie odio iaculis at. Phasellus lectus nunc, auctor et purus ac, aliquam tempus nulla. Phasellus bibendum fermentum euismod. In sagittis auctor lectus nec finibus. Suspendisse quis placerat lectus, tincidunt scelerisque tortor. Nulla tempus pretium quam, sed faucibus nunc vehicula sed.\r\n\r\nPraesent malesuada dictum neque eu luctus. Aliquam erat volutpat. Sed mattis mattis tellus ac sodales. Nunc est velit, varius ac dignissim at, feugiat sit amet quam. Vestibulum tellus turpis, semper ac nisl eu, eleifend bibendum urna. Duis iaculis felis in nulla pulvinar iaculis. Duis et massa nec quam gravida efficitur. Curabitur massa urna, varius non lectus vitae, efficitur volutpat diam. Quisque in porta augue. Donec tristique metus non nulla iaculis volutpat.\r\n\r\nSed porta, eros ac vestibulum vehicula, dui mauris convallis massa, et placerat eros diam ac ante. Sed faucibus vulputate tempus. Fusce mi lectus, efficitur non accumsan auctor, eleifend eu ex. Integer tempus metus quam, non ultricies erat dapibus non. Morbi mollis tortor vel nisi blandit sagittis. Nulla vestibulum rhoncus lectus nec tempus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;\r\n\r\nQuisque pharetra lectus sed faucibus convallis. Suspendisse sed ipsum vel neque interdum hendrerit a a nunc. Nullam faucibus eget urna sed elementum. Integer sollicitudin vel enim quis rhoncus. Cras tincidunt erat ligula, ut condimentum lectus suscipit eget. Vestibulum ut massa sagittis, viverra augue at, efficitur lectus. Fusce sem sem, malesuada a neque id, fermentum molestie lacus. Sed mollis dui massa, at egestas justo vestibulum sit amet.', 20, '2016-09-23 03:57:17'),
(70, 'Quisque et tincidunt justo', '["57e515d36cb8d1.10382349-Cubic-Facebook-Timeline-Cover.jpg","57e515d36d0756.16238627-funny-eyes-1284.jpg","57e515d36d4ae1.16439060-peek-a-boo.jpg"]', 'Phasellus ultricies rutrum nulla, vitae vestibulum nunc porttitor quis. Ut sodales ullamcorper pulvinar. Donec vitae placerat orci. Cras eu est at mauris tempus tincidunt. Aliquam posuere dignissim elit sit amet volutpat. Duis tincidunt ullamcorper felis, vel ultrices sapien luctus vitae. Maecenas lobortis dictum porta. Aenean ac accumsan nulla, dictum condimentum neque. Pellentesque ullamcorper ultricies lectus. Phasellus ac ipsum at metus ullamcorper sollicitudin. Ut porttitor cursus massa ut varius. Quisque non nisi elementum, luctus ex at, venenatis massa. Etiam eu dolor massa.\r\n\r\nCras mauris nibh, luctus ac varius ac, interdum in lorem. Cras accumsan facilisis turpis, et faucibus ex dictum ac. Quisque nec sem faucibus nulla hendrerit dignissim. Sed mattis laoreet odio, eget sollicitudin augue efficitur eu. Aenean sit amet bibendum nunc. Integer condimentum hendrerit sapien, sit amet ultrices nisi feugiat et. Praesent felis enim, vulputate ac sem vel, rutrum tristique arcu. Mauris dui orci, aliquet a nisi non, fermentum viverra augue. Aenean neque est, mollis id ultrices ac, vulputate nec justo. Nam faucibus vel elit vitae lacinia. Vestibulum tempor in sapien at molestie. In ultrices nisi ut ante commodo, nec vulputate enim euismod. In sed purus non turpis ultricies suscipit. Maecenas semper molestie venenatis. Sed hendrerit metus efficitur, luctus mi vitae, egestas metus.\r\n\r\nSuspendisse at elit dictum, vulputate leo nec, ultricies risus. Vestibulum ac lectus a arcu pulvinar feugiat a in elit. Integer imperdiet volutpat leo, sit amet consectetur dui ornare ac. Ut pellentesque massa vitae mattis varius. Aliquam efficitur commodo elit laoreet consequat. Mauris convallis urna lectus, nec malesuada turpis iaculis in. Sed interdum et tellus a gravida. Suspendisse porttitor pretium sapien, eu venenatis dui convallis in. Praesent vel nisl vel tellus accumsan pulvinar. Maecenas volutpat viverra purus. Nunc sem metus, fringilla et molestie eu, gravida nec orci. Proin quis viverra arcu, id feugiat purus. Donec fermentum tellus at maximus hendrerit. Sed et tempus nulla.', 21, '2016-09-23 11:45:23'),
(71, 'Cras mauris', '["57e51caf37df99.30971495-6968796-desktop-wallpaper-backgrounds-1080p.jpg","57e51caf3834d7.07669204-Background.jpg","57e51caf387ec6.26358989-ykyqottitdlrcemupbfs.jpg"]', 'Mauris sapien purus, dapibus sed sem a, imperdiet rutrum nulla. Mauris a dolor tristique, ullamcorper tellus at, elementum ex. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc maximus justo nec enim eleifend, molestie ornare ipsum interdum. Nunc nec imperdiet augue. Nullam felis eros, porta tincidunt sodales vel, rutrum et erat. Etiam faucibus cursus enim, ut sagittis purus iaculis ut. Quisque et tincidunt justo, quis mollis nisl. Donec vulputate luctus mi, ut dapibus nulla venenatis ut. Nulla porttitor lectus a nisi facilisis, ac rutrum arcu pulvinar. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer tempus malesuada velit, vitae feugiat ante egestas a. Aliquam vehicula odio eros, sit amet dictum dui posuere vel. Nulla facilisi. Phasellus scelerisque massa id lacus gravida dapibus. Aenean et sollicitudin leo.\r\n\r\nPhasellus ultricies rutrum nulla, vitae vestibulum nunc porttitor quis. Ut sodales ullamcorper pulvinar. Donec vitae placerat orci. Cras eu est at mauris tempus tincidunt. Aliquam posuere dignissim elit sit amet volutpat. Duis tincidunt ullamcorper felis, vel ultrices sapien luctus vitae. Maecenas lobortis dictum porta. Aenean ac accumsan nulla, dictum condimentum neque. Pellentesque ullamcorper ultricies lectus. Phasellus ac ipsum at metus ullamcorper sollicitudin. Ut porttitor cursus massa ut varius. Quisque non nisi elementum, luctus ex at, venenatis massa. Etiam eu dolor massa.\r\n\r\nCras mauris nibh, luctus ac varius ac, interdum in lorem. Cras accumsan facilisis turpis, et faucibus ex dictum ac. Quisque nec sem faucibus nulla hendrerit dignissim. Sed mattis laoreet odio, eget sollicitudin augue efficitur eu. Aenean sit amet bibendum nunc. Integer condimentum hendrerit sapien, sit amet ultrices nisi feugiat et. Praesent felis enim, vulputate ac sem vel, rutrum tristique arcu. Mauris dui orci, aliquet a nisi non, fermentum viverra augue. Aenean neque est, mollis id ultrices ac, vulputate nec justo. Nam faucibus vel elit vitae lacinia. Vestibulum tempor in sapien at molestie. In ultrices nisi ut ante commodo, nec vulputate enim euismod. ', 20, '2016-09-23 12:14:39'),
(72, ' Sed quis quam vel urna ultrices scelerisque', '["57e51d04914d27.30213619-2560x1440.jpg","57e51d04918e79.32063733-images.jpg"]', 'Phasellus ac ipsum eget tellus rutrum ultrices. Proin molestie, enim sed fringilla semper, turpis enim blandit elit, quis eleifend massa libero ut urna. Ut aliquet sollicitudin nisl, in lobortis leo suscipit eu. Fusce vitae dapibus mi. Sed vehicula gravida arcu, eu varius sapien feugiat vel. Nulla ex massa, aliquet non fringilla sit amet, laoreet ac velit. Maecenas ullamcorper non nunc ut efficitur. Donec luctus diam lacus. Donec a suscipit felis, ullamcorper faucibus purus. Nunc varius augue ut ipsum condimentum mattis. Nam consectetur arcu ut lacinia pellentesque.\r\n\r\nNullam elit justo, luctus sit amet metus in, finibus porttitor turpis. Vivamus faucibus pellentesque est vel lobortis. Etiam sit amet arcu aliquet, pretium purus sit amet, cursus urna. Cras dolor sem, vestibulum vitae finibus a, ullamcorper eget lectus. Sed massa ex, luctus quis nunc eu, placerat tincidunt eros. Nunc sit amet volutpat mi, a pellentesque mauris. Integer vel auctor nunc, ultricies feugiat nisl.\r\n\r\nNulla fermentum luctus est at consequat. Proin vel tristique lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam faucibus ultrices justo et imperdiet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc eget imperdiet metus, a ultrices mauris. Nullam ac sem eu est pulvinar feugiat non eget arcu. Nam odio sem, fermentum nec aliquam ac, pharetra in metus.\r\n\r\nIn ac pellentesque urna, a consequat neque. Aliquam cursus pretium nisl in hendrerit. Nam eget rhoncus risus. Mauris at dapibus neque, et sagittis lorem. Quisque massa est, convallis at efficitur non, cursus pulvinar quam. Aliquam lobortis condimentum ipsum, at commodo diam elementum et. Suspendisse lacinia ultricies ullamcorper. Sed ex turpis, laoreet eu commodo sit amet, sollicitudin nec dui. Vivamus tincidunt vitae tortor eu tempus. In fermentum diam odio, eu congue elit vulputate dignissim. Etiam lacus massa, vulputate id leo quis, vehicula euismod felis.', 21, '2016-09-23 12:16:04'),
(73, 'Lorem ipsum dolor sit', '["57e51d48793f40.25643438-86WiOig.jpg","57e51d48796a08.96863593-4235604-desktop-wallpaper.jpg","57e51d48798e43.84822380-UWLNYLM.jpg"]', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac neque vel ex accumsan porta imperdiet vel augue. Nulla facilisi. Nunc lacus ipsum, varius et enim non, varius bibendum nunc. Quisque fringilla lorem et enim egestas, ac interdum erat placerat. Sed dictum rutrum elit vitae cursus. Morbi tristique fermentum lectus, quis tincidunt elit pharetra eget. Pellentesque blandit, lectus vel euismod tincidunt, lorem leo convallis nibh, non hendrerit lectus augue at nisi. Cras euismod facilisis ipsum, vel pretium dui mollis sit amet. In dignissim, orci et congue varius, eros ante tincidunt est, id fringilla elit ligula nec tortor. Cras vitae augue mauris.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque tincidunt leo nec arcu vestibulum, vitae pretium turpis pulvinar. Fusce gravida pulvinar sem ac auctor. In faucibus ac ligula non efficitur. Cras facilisis orci sed massa blandit ullamcorper. Donec imperdiet gravida dolor, in vestibulum ante fermentum at. Nulla tempus mollis rutrum. Nullam ultrices fermentum accumsan. Cras fringilla a neque eget tristique. Phasellus nec congue arcu. Vestibulum viverra lobortis luctus. Donec vulputate justo viverra orci ultrices auctor.\r\n\r\nInteger vestibulum malesuada lorem, at dignissim urna pretium a. Praesent porttitor iaculis aliquet. Ut sollicitudin pharetra ultrices. Curabitur pharetra, mi non pretium condimentum, nulla ante lacinia ex, in rutrum ante velit vel tellus. Proin eget nibh nulla. Sed sed sollicitudin nibh, in varius dui. Aenean ultrices erat ut magna suscipit pellentesque. Curabitur sed vulputate massa, vitae accumsan felis. Nulla non erat nulla. Nam eros est, vehicula ullamcorper odio nec, cursus efficitur nulla. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed a lorem vitae urna lobortis semper. Aenean commodo elit imperdiet, tempor ex dictum, eleifend libero. Duis laoreet, velit vel feugiat congue, nisl leo tristique elit, a dictum ipsum nibh id purus.', 21, '2016-09-23 12:17:12'),
(74, 'Lorem Ipsum', '["57e5208aa6ca69.14534549-6968796-desktop-wallpaper-backgrounds-1080p.jpg","57e5208aa6f755.27338979-cool-desktop-shoes-wallpapers.jpg"]', 'nteger dui justo, lobortis eu faucibus a, auctor et mi. Aenean fringilla ut lorem vitae luctus. Nulla odio nisi, suscipit ut lorem sed, tempor euismod dui. Nunc turpis dolor, venenatis sed velit venenatis, consectetur dapibus leo. Maecenas a turpis non tortor pellentesque luctus. Etiam eu sem pulvinar, fermentum turpis id, lacinia nisi. Nunc ac consectetur enim. Sed ullamcorper nisi tellus, ut lacinia ex suscipit at. Quisque rhoncus, lacus vitae efficitur egestas, libero nibh cursus nibh, ac vehicula nisl nulla ac tortor. Proin aliquet arcu at enim congue semper. Nam nec efficitur erat. In id nunc ut quam luctus malesuada. Praesent nulla lectus, feugiat sed convallis sit amet, consectetur et leo. Nulla commodo interdum orci, eu aliquet magna ultrices eu. In hac habitasse platea dictumst. Donec sem lorem, dapibus faucibus porta a, porttitor at turpis.\r\n\r\nNullam placerat turpis in pulvinar ullamcorper. Vivamus maximus massa eget urna sollicitudin tempus tincidunt et metus. Sed risus mauris, sagittis vitae elementum sed, tincidunt et purus. Aenean aliquet purus sit amet erat aliquet porttitor. Etiam accumsan efficitur ullamcorper. Aenean varius vestibulum eros sit amet aliquet. Suspendisse scelerisque aliquam ante et rutrum. Cras ligula nisi, mollis vitae felis in, rhoncus tempus ante. Fusce sed nisl id nunc finibus faucibus vel et tellus. Mauris vel quam in arcu accumsan lacinia dapibus eu lectus. Ut sit amet odio a neque egestas maximus quis sit amet erat. Morbi viverra dignissim viverra. Curabitur in mi eu sem lacinia vulputate. Nullam sit amet commodo ex, eget malesuada urna. Donec ut magna sapien. Nulla at laoreet lectus, vitae vulputate ipsum.\r\n\r\nSed in vehicula urna, ac venenatis dolor. Nunc in luctus diam. Integer imperdiet ultricies turpis, vitae vulputate orci consectetur accumsan. Nullam commodo aliquet pulvinar. Duis ornare, nibh in lacinia rhoncus, justo neque aliquam ante, sit amet imperdiet libero purus ut augue. Cras vel urna nunc. Etiam eget ornare quam.\r\n\r\nPhasellus ac ipsum eget tellus rutrum ultrices. Proin molestie, enim sed fringilla semper, turpis enim blandit elit, quis eleifend massa libero ut urna. Ut aliquet sollicitudin nisl, in lobortis leo suscipit eu. Fusce vitae dapibus mi. Sed vehicula gravida arcu, eu varius sapien feugiat vel. Nulla ex massa, aliquet non fringilla sit amet, laoreet ac velit. Maecenas ullamcorper non nunc ut efficitur. Donec luctus diam lacus. Donec a suscipit felis, ullamcorper faucibus purus. Nunc varius augue ut ipsum condimentum mattis. Nam consectetur arcu ut lacinia pellentesque.\r\n\r\nNullam elit justo, luctus sit amet metus in, finibus porttitor turpis. Vivamus faucibus pellentesque est vel lobortis. Etiam sit amet arcu aliquet, pretium purus sit amet, cursus urna. Cras dolor sem, vestibulum vitae finibus a, ullamcorper eget lectus. Sed massa ex, luctus quis nunc eu, placerat tincidunt eros. Nunc sit amet volutpat mi, a pellentesque mauris. Integer vel auctor nunc, ultricies feugiat nisl.\r\n\r\nNulla fermentum luctus est at consequat. Proin vel tristique lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam faucibus ultrices justo et imperdiet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc eget imperdiet metus, a ultrices mauris. Nullam ac sem eu est pulvinar feugiat non eget arcu. Nam odio sem, fermentum nec aliquam ac, pharetra in metus.\r\n\r\nIn ac pellentesque urna, a consequat neque. Aliquam cursus pretium nisl in hendrerit. Nam eget rhoncus risus. Mauris at dapibus neque, et sagittis lorem. Quisque massa est, convallis at efficitur non, cursus pulvinar quam. Aliquam lobortis condimentum ipsum, at commodo diam elementum et. Suspendisse lacinia ultricies ullamcorper. Sed ex turpis, laoreet eu commodo sit amet, sollicitudin nec dui. Vivamus tincidunt vitae tortor eu tempus. In fermentum diam odio, eu congue elit vulputate dignissim. Et', 21, '2016-09-23 12:31:06'),
(75, 'Fusce dictum ', '["57e520eb3aa7b3.85448909-coloeful-balls-cool-hd-desktop-background-wallpapers.jpg","57e520eb3ad474.84186219-cool-desktop-shoes-wallpapers.jpg"]', 'Phasellus ac ipsum eget tellus rutrum ultrices. Proin molestie, enim sed fringilla semper, turpis enim blandit elit, quis eleifend massa libero ut urna. Ut aliquet sollicitudin nisl, in lobortis leo suscipit eu. Fusce vitae dapibus mi. Sed vehicula gravida arcu, eu varius sapien feugiat vel. Nulla ex massa, aliquet non fringilla sit amet, laoreet ac velit. Maecenas ullamcorper non nunc ut efficitur. Donec luctus diam lacus. Donec a suscipit felis, ullamcorper faucibus purus. Nunc varius augue ut ipsum condimentum mattis. Nam consectetur arcu ut lacinia pellentesque.\r\n\r\nNullam elit justo, luctus sit amet metus in, finibus porttitor turpis. Vivamus faucibus pellentesque est vel lobortis. Etiam sit amet arcu aliquet, pretium purus sit amet, cursus urna. Cras dolor sem, vestibulum vitae finibus a, ullamcorper eget lectus. Sed massa ex, luctus quis nunc eu, placerat tincidunt eros. Nunc sit amet volutpat mi, a pellentesque mauris. Integer vel auctor nunc, ultricies feugiat nisl.\r\n\r\nNulla fermentum luctus est at consequat. Proin vel tristique lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam faucibus ultrices justo et imperdiet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc eget imperdiet metus, a ultrices mauris. Nullam ac sem eu est pulvinar feugiat non eget arcu. Nam odio sem, fermentum nec aliquam ac, pharetra in metus.\r\n\r\nIn ac pellentesque urna, a consequat neque. Aliquam cursus pretium nisl in hendrerit. Nam eget rhoncus risus. Mauris at dapibus neque, et sagittis lorem. Quisque massa est, convallis at efficitur non, cursus pulvinar quam. Aliquam lobortis condimentum ipsum, at commodo diam elementum et. Suspendisse lacinia ultricies ullamcorper. Sed ex turpis, laoreet eu commodo sit amet, sollicitudin nec dui. Vivamus tincidunt vitae tortor eu tempus. In fermentum diam odio, eu congue elit vulputate dignissim. Etiam lacus massa, vulputate id leo quis, vehicula euismod felis.\r\n\r\nPellentesque vestibulum auctor elit eu auctor. Maecenas id egestas ligula. Mauris fermentum sagittis ante ut pharetra. Morbi finibus massa ac odio tempor, eu iaculis quam lobortis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; P', 21, '2016-09-23 12:32:43'),
(81, ' Donec tincidunt ante orci', '["57e5bc89c11e08.83466513-tas-2_519a1354a3b5f.jpg","57e5bc89c14292.74636735-wellnessspars-Dinara-foto01.jpg","57e5bc89c16314.61483423-zatvoreni-bazen-klisa_5169d822b895c.jpg"]', 'Phasellus ac ipsum eget tellus rutrum ultrices. Proin molestie, enim sed fringilla semper, turpis enim blandit elit, quis eleifend massa libero ut urna. Ut aliquet sollicitudin nisl, in lobortis leo suscipit eu. Fusce vitae dapibus mi. Sed vehicula gravida arcu, eu varius sapien feugiat vel. Nulla ex massa, aliquet non fringilla sit amet, laoreet ac velit. Maecenas ullamcorper non nunc ut efficitur. Donec luctus diam lacus. Donec a suscipit felis, ullamcorper faucibus purus. Nunc varius augue ut ipsum condimentum mattis. Nam consectetur arcu ut lacinia pellentesque.\r\n\r\nNullam elit justo, luctus sit amet metus in, finibus porttitor turpis. Vivamus faucibus pellentesque est vel lobortis. Etiam sit amet arcu aliquet, pretium purus sit amet, cursus urna. Cras dolor sem, vestibulum vitae finibus a, ullamcorper eget lectus. Sed massa ex, luctus quis nunc eu, placerat tincidunt eros. Nunc sit amet volutpat mi, a pellentesque mauris. Integer vel auctor nunc, ultricies feugiat nisl.\r\n\r\nNulla fermentum luctus est at consequat. Proin vel tristique lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam faucibus ultrices justo et imperdiet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc eget imperdiet metus, a ultrices mauris. Nullam ac sem eu est pulvinar feugiat non eget arcu. Nam odio sem, fermentum nec aliquam ac, pharetra in metus.\r\n\r\nIn ac pellentesque urna, a consequat neque. Aliquam cursus pretium nisl in hendrerit. Nam eget rhoncus risus. Mauris at dapibus neque, et sagittis lorem. Quisque massa est, convallis at efficitur non, cursus pulvinar quam. Aliquam lobortis condimentum ipsum, at commodo diam elementum et. Suspendisse lacinia ultricies ullamcorper. Sed ex turpis, laoreet eu commodo sit amet, sollicitudin nec dui. Vivamus tincidunt vitae tortor eu tempus. In fermentum diam odio, eu congue elit vulputate dignissim. Etiam lacus massa, vulputate id leo quis, vehicula euismod felis.\r\n\r\nPellentesque vestibulum auctor elit eu auctor. Maecenas id egestas ligula. Mauris fermentum sagittis ante ut pharetra. Morbi finibus massa ac odio tempor, eu iaculis quam lobortis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; P', 33, '2016-09-23 23:36:41'),
(83, 'Nulla fermentum luctus', '["57e5bd0140d819.09406990-clasic.jpg","57e5bd0140fbe4.09538185-cubalibre.jpg"]', 'Sed in vehicula urna, ac venenatis dolor. Nunc in luctus diam. Integer imperdiet ultricies turpis, vitae vulputate orci consectetur accumsan. Nullam commodo aliquet pulvinar. Duis ornare, nibh in lacinia rhoncus, justo neque aliquam ante, sit amet imperdiet libero purus ut augue. Cras vel urna nunc. Etiam eget ornare quam.\r\n\r\nPhasellus ac ipsum eget tellus rutrum ultrices. Proin molestie, enim sed fringilla semper, turpis enim blandit elit, quis eleifend massa libero ut urna. Ut aliquet sollicitudin nisl, in lobortis leo suscipit eu. Fusce vitae dapibus mi. Sed vehicula gravida arcu, eu varius sapien feugiat vel. Nulla ex massa, aliquet non fringilla sit amet, laoreet ac velit. Maecenas ullamcorper non nunc ut efficitur. Donec luctus diam lacus. Donec a suscipit felis, ullamcorper faucibus purus. Nunc varius augue ut ipsum condimentum mattis. Nam consectetur arcu ut lacinia pellentesque.\r\n\r\nNullam elit justo, luctus sit amet metus in, finibus porttitor turpis. Vivamus faucibus pellentesque est vel lobortis. Etiam sit amet arcu aliquet, pretium purus sit amet, cursus urna. Cras dolor sem, vestibulum vitae finibus a, ullamcorper eget lectus. Sed massa ex, luctus quis nunc eu, placerat tincidunt eros. Nunc sit amet volutpat mi, a pellentesque mauris. Integer vel auctor nunc, ultricies feugiat nisl.\r\n\r\nNulla fermentum luctus est at consequat. Proin vel tristique lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam faucibus ultrices justo et imperdiet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc eget imperdiet metus, a ultrices mauris. Nullam ac sem eu est pulvinar feugiat non eget arcu. Nam odio sem, fermentum nec aliquam ac, pharetra in metus.', 33, '2016-09-23 23:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `user_id`) VALUES
(2, 'ac36e300e3a04d404e696b9f695d343b187be3200c4755ddd1af31fb6f38292c', 2),
(3, '219c4819c26b9a3ab0cc0d2059500c9428d14435120377a502ed246cede35594', 20),
(4, 'd631f41163feb202934afe0e9ebf2f5cc464a0b0054d9f5c000dc0a8ce2205cb', 20),
(5, '3e76915071d7d3f1c8a584fc3e865b0d1f4118ce543824b874aa0f2c2bb28062', 20),
(6, '038b1cb85a35d5df7ca2de2698099982d32efd3d6c1cc6eafbbf9e60aa9034ab', 20),
(7, 'f14c03549e88586919aa1fd497c682da3bfd8a0d4a4332dfe2963af12da9bd3b', 20),
(8, '5e97daa161ce863db5f48a48abb0f61985668df102b63ca1bbe8cff73cd6b0eb', 20),
(9, '981401fb9a8ba01b3126703af5f427068b5106037670b2ce2064e8f32e9e230c', 20),
(10, 'be327b5643d4ea7dfe5a1e0a89c4f2da0fbe7e53abfa822951962191fa3d71c8', 20),
(11, 'ae2e1eebe49b6292048f90ae0b83e2200abe80ce5c41639223fc6805ab1a5697', 20),
(12, '234153733669dafa0da00b574b2c705752aafbbc35cfe9600b0baf998c317d3f', 20),
(13, '2c672ae054250d5f993d0466e5d3e02152a9ac1b2c905ab61124676428bffa4e', 20),
(14, '5bbb0b13b3faed1d8f84e77147f498492325717cdcb78c1367064636135a31ce', 20),
(15, 'd14d01f68aae63b8a041b44fab6905162721c082188859ff4275e350bd17cc98', 20),
(16, 'f44cd61357d65aea84809e01220c7020ac538da9e524b7e19397f1dbe4462f3e', 20),
(17, 'c75831541a91c6015b34042d5160cd406367e36289d2d5084ac5b64ee915a34c', 20),
(18, 'c7f2eee2d4f9f14fc7671c5663d87aa0e208f175491d9f7f667d37449773b7ea', 20),
(19, '9f7b03db163e28e7cbdac8c7c4127d8973073065a85cb3213a33994d4286e180', 20),
(20, 'c4942538b1c1623c4e0f0bc38480fb7acea20e285a561b3486244d27ee95c28a', 20),
(21, '979e51920edf8d199f5f95595b53c84292195bf6da562f54a762ff386bcaddde', 20),
(22, 'f842a1afd10eaf78ee29fc77880c9b0c3c84f4facd8cdc0b1fcd2b4af0e6b379', 20),
(23, 'ae6813fb38bf556863e72e91e18045e4784de841baf10cc7c90b20f0cef9b5f7', 20),
(24, '5bd95823f85916f5d55ecbf57377d7c146f154ab629cdadf600e100150c83556', 20),
(25, '21eceda085a55c9b60f12aec5cd8e2f9700906ccb3cf1be574fa535530769070', 20),
(26, '4c2db02ed1c130f6eef1399f07a6005b0e70e9c57d5fc6618849545ff6467aa3', 20),
(27, 'a3a7b940b39dc1a8bb173ccd609167f9b982211d108af5d1b9859a118c6e7350', 20),
(28, '69115d37ab2f1e8a22181de6cf43a6dca414176a5cd8aed0f39fcf524c6f1f02', 20),
(29, '2f18aae4626093947b957b9cd58c2ce2d9f98f0c72052ab7a0576601f35f19e8', 20),
(30, '3f2ff0f0f0d7b206004525bc2795744ff04467f6b5c16bfd617ed36f8c872956', 20),
(31, 'c12461d36e463ab1fdecdf767eedec256b1b85916a78c70b4d2a67a7d0ff30a2', 20),
(32, '0debadd387cff76f1139edf9d747e5dfaecafa90334458e376b3b89ec2d01713', 20),
(33, 'ac31b4011c30c8c5b0c68d5eacda83180e38b2a1c9ea8bdbb18fadc8838da6c4', 20),
(34, 'a743108915cd83d21d93252565da29f6ebc1580e608ad2e40bf4d3dbff4864f2', 20),
(35, '49941c28988ef5ab1d1dc13c498b2c0e00649b5c0f6a82c62341e880c801142d', 20),
(36, '24e5f1253ac5af2bfae6411f94d1bf10b69c349aeba4340b0686b7149b0e9c5f', 20),
(37, 'e09276369e36e93ccafba26be26f188ce00b2ab9f23020ffbdc063840860e3a6', 20),
(38, 'b796faed786b4a79c801687350354b85ff560d7c0d7412488aea1e3326e624b4', 20),
(39, 'a3023987d1e76f328644afe39616faf666d214798b16914d37a39686fc294c06', 20),
(40, 'd8dcb5aceb69319a3eedd9b669399dd87cc5e659d384fe0073d698f54bb72c2d', 20),
(41, '7b42e7d24c46d5e2308f803e5e646efbdb99f7c298abc9eefad17cdcdc377866', 21),
(42, '5916fe47fe3bd548430d193f6a8769cc23d97fc2859abfb5eb7978a1fc364873', 20),
(43, '981df0d1db65616a131b7ae2e3229261965517f572bcc87dde54bed83e4d6079', 21),
(44, '4f34fd0604d6e69a82f033c5b643ced66bbce0b8a4fcd997ed0230f2f6271639', 20),
(45, 'b5c3788b38f37f6b38ea86617900ab6dbcb08f3e556c098b75034f8e3c10c0f9', 20),
(46, '909e6ededbfe5a42ac4d464b4bde007a60150b80a65f23633d3671b74d6ad11f', 33),
(47, 'adf8df252e8b13e1493f635901dd158d3553b46608b78e4bbad8564c4090e085', 20),
(48, 'eb944cfa4be6933fcb7ecd94cefa4b135cb2da93d9c651a82265c30624b3ac05', 20),
(49, '87b07a22918f18f679cfd1526b42b8eb47377c4cf20c6ee1fbd79f63f0c82562', 20),
(50, 'a3de81eb140889fa6d49dee5a45292119da05c33c765dabdcf86a102a4707864', 20),
(51, '192746fd4aaed486cc1b455e6236d1a39a3cafafb640f8f260fa0da9156f75d6', 20),
(52, '7e76bc80cd42f9027a6a7ec51784a7123de2b2dad80fc685ff5f8003a85e9e99', 21),
(53, '5cead21780a9c29f782937785171d40694c7f0f5f370f581ec2f3eaad0500b91', 21),
(54, '214e309add6c2733117debf8d4b33c00354a02e9e43a8cc2523f6b8fcf52781d', 20),
(55, '901182092022bc3306cc04d0b9785a210f6d02a7ff5c4bc01b2a1631733a42cf', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `password`, `image`, `date`) VALUES
(20, 'Maja', 'Jeremic', 'maki@mail.com', '$2y$10$faMVbtF4L0MyEkB6V0koLOQbvwQO0w/spssvwlvn.pvnTrzUJHEZ2', 'prof.jpg', '2016-09-18 23:34:07'),
(21, 'Ana', 'Anic', 'ana@mail.com', '$2y$10$UGvL3BjHxWQrZkTSChUI8.7HpnlzAkDqVcEqerKWohfS.ebMJKgHi', 'prof1.jpg', '2016-09-23 11:43:52'),
(23, 'Pera', 'Peric', 'pera@mail.com', '$2y$10$XQ0B92OEk3k8bV71JNeN6eeV7AjfNX8kQU7gxLPJufmcm5h98aZSG', 'prof3.jpg', '2016-09-23 12:13:34'),
(25, 'Alex', 'Alexic', 'alex@mail.com', '$2y$10$Kw1vagpMp.0jecOMeIKva.kvb4HbD.Ynj0sBAYDkW8xiJ.nxqg9vK', 'prof4.jpg', '2016-09-23 15:38:50'),
(26, 'Marko', 'Markovic', 'marko@mail.com', '$2y$10$58fmMIFSQCc/.roRl0HkG.8.yKXp8IJ/5aRhymvPq3BmTD.rHtQGm', 'prof5.jpg', '2016-09-23 15:38:50'),
(29, 'Sonja', 'Stankovic', 'sonja@mail.com', '$2y$10$xt9WGOVhp70DXAD9umkzNuIt/NTuIpxdUS3WKg1fX9weJJqAX1t3.', 'prof6.jpg', '2016-09-23 23:32:56'),
(30, 'Nikola', 'Nikolic', 'nikola@mail.com', '$2y$10$KPe9iOBhwMQ3W0l.fZU7guARO5P7H0T/Duy5/EedLntj6XJJYBBwu', 'prof2.jpg', '2016-09-23 23:32:56'),
(33, 'Tea', 'Tasic', 'tea@mail.com', '$2y$10$P6eAkm3o6o9VANMhTokQZ.h53jAjgCN3Nt3pABs2AtNeyWzp2CV1G', 'prof8.jpg', '2016-09-23 23:34:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
