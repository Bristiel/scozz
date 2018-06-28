-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.19 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para scozz
CREATE DATABASE IF NOT EXISTS `scozz` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `scozz`;

-- Volcando estructura para tabla scozz.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(10) unsigned NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `target` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.comments: ~0 rows (aproximadamente)
DELETE FROM `comments`;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.download_extras
CREATE TABLE IF NOT EXISTS `download_extras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `order_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.download_extras: ~0 rows (aproximadamente)
DELETE FROM `download_extras`;
/*!40000 ALTER TABLE `download_extras` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_extras` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.manage_languages
CREATE TABLE IF NOT EXISTS `manage_languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_sample_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `default_lang` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.manage_languages: ~0 rows (aproximadamente)
DELETE FROM `manage_languages`;
/*!40000 ALTER TABLE `manage_languages` DISABLE KEYS */;
INSERT INTO `manage_languages` (`id`, `lang_name`, `lang_code`, `lang_sample_img`, `status`, `default_lang`, `created_at`, `updated_at`) VALUES
	(1, 'english', 'en', 'en_lang_sample_img.png', 1, 1, '2018-06-28 00:58:41', '2018-06-28 00:58:41');
/*!40000 ALTER TABLE `manage_languages` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.migrations: ~19 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2015_12_05_184931_create_roles_table', 1),
	(3, '2015_12_05_185011_create_role_user_table', 1),
	(4, '2015_12_05_190659_create_options_table', 1),
	(5, '2016_01_01_022900_create_posts_table', 1),
	(6, '2016_01_01_022956_create_post_extras_table', 1),
	(7, '2016_01_17_181505_create_object_relationships_table', 1),
	(8, '2016_05_12_015250_create_orders_items_table', 1),
	(9, '2016_06_04_053757_create_save_custom_designs_table', 1),
	(10, '2016_06_15_182116_create_users_custom_designs_table', 1),
	(11, '2016_10_02_061320_create_users_details_table', 1),
	(12, '2016_10_07_023527_create_manage_languages_table', 1),
	(13, '2016_11_28_173526_create_user_role_permissions_table', 1),
	(14, '2017_02_07_173536_create_comments_table', 1),
	(15, '2017_02_09_173636_create_subscriptions_table', 1),
	(16, '2017_02_09_173736_create_request_products_table', 1),
	(17, '2017_05_23_153636_create_term_extras_table', 1),
	(18, '2017_05_23_173636_create_terms_table', 1),
	(19, '2017_09_22_172636_create_download_extras_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.object_relationships
CREATE TABLE IF NOT EXISTS `object_relationships` (
  `term_id` int(10) unsigned NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`term_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.object_relationships: ~2 rows (aproximadamente)
DELETE FROM `object_relationships`;
/*!40000 ALTER TABLE `object_relationships` DISABLE KEYS */;
INSERT INTO `object_relationships` (`term_id`, `object_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2018-06-28 03:20:45', '2018-06-28 03:20:45'),
	(2, 1, '2018-06-28 03:20:45', '2018-06-28 03:20:45');
/*!40000 ALTER TABLE `object_relationships` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.options
CREATE TABLE IF NOT EXISTS `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.options: ~9 rows (aproximadamente)
DELETE FROM `options`;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
	(1, '_shipping_method_data', 'a:4:{s:15:"shipping_option";a:2:{s:15:"enable_shipping";s:0:"";s:12:"display_mode";s:13:"radio_buttons";}s:9:"flat_rate";a:3:{s:13:"enable_option";s:0:"";s:12:"method_title";s:9:"Flat Rate";s:11:"method_cost";s:0:"";}s:13:"free_shipping";a:3:{s:13:"enable_option";s:0:"";s:12:"method_title";s:13:"Free Shipping";s:12:"order_amount";s:0:"";}s:14:"local_delivery";a:4:{s:13:"enable_option";s:0:"";s:12:"method_title";s:14:"Local Delivery";s:8:"fee_type";s:0:"";s:12:"delivery_fee";s:0:"";}}', '2018-06-28 00:58:41', '2018-06-28 00:58:41'),
	(2, '_settings_data', 'a:1:{s:16:"general_settings";a:8:{s:15:"general_options";a:5:{s:10:"site_title";s:5:"Scozz";s:13:"email_address";s:22:"robertino@scozz.com.ar";s:9:"site_logo";s:35:"1530154721-h-40-Scozz sin fondo.png";s:31:"allow_registration_for_frontend";b:1;s:26:"default_role_slug_for_site";s:9:"site-user";}s:13:"taxes_options";a:3:{s:13:"enable_status";s:1:"0";s:13:"apply_tax_for";s:11:"per_product";s:10:"tax_amount";s:0:"";}s:16:"checkout_options";a:2:{s:17:"enable_guest_user";b:1;s:17:"enable_login_user";b:1;}s:29:"downloadable_products_options";a:3:{s:17:"login_restriction";b:0;s:31:"grant_access_from_thankyou_page";b:1;s:23:"grant_access_from_email";b:0;}s:17:"recaptcha_options";a:5:{s:32:"enable_recaptcha_for_admin_login";b:0;s:31:"enable_recaptcha_for_user_login";b:0;s:38:"enable_recaptcha_for_user_registration";b:0;s:20:"recaptcha_secret_key";s:0:"";s:18:"recaptcha_site_key";s:0:"";}s:16:"currency_options";a:6:{s:13:"currency_name";s:3:"ARS";s:17:"currency_position";s:15:"left_with_space";s:18:"thousand_separator";s:1:",";s:17:"decimal_separator";s:1:".";s:18:"number_of_decimals";s:1:"2";s:17:"frontend_currency";a:1:{i:0;s:3:"ARS";}}s:19:"date_format_options";a:1:{s:11:"date_format";N;}s:25:"default_frontend_currency";a:1:{i:0;s:3:"ARS";}}}', '2018-06-28 00:58:41', '2018-06-28 02:59:26'),
	(3, '_custom_designer_settings_data', 'a:1:{s:16:"general_settings";a:1:{s:16:"canvas_dimension";a:3:{s:13:"small_devices";a:2:{s:5:"width";i:280;s:6:"height";i:300;}s:14:"medium_devices";a:2:{s:5:"width";i:480;s:6:"height";i:480;}s:13:"large_devices";a:2:{s:5:"width";i:500;s:6:"height";i:550;}}}}', '2018-06-28 00:58:41', '2018-06-28 00:58:41'),
	(4, '_payment_method_data', 'a:5:{s:14:"payment_option";a:1:{s:21:"enable_payment_method";s:3:"yes";}s:4:"bacs";a:5:{s:13:"enable_option";s:0:"";s:12:"method_title";s:20:"Direct Bank Transfer";s:18:"method_description";s:173:"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won\'t be shipped until the funds have cleared in our account.";s:19:"method_instructions";s:173:"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won\'t be shipped until the funds have cleared in our account.";s:15:"account_details";a:6:{s:12:"account_name";s:0:"";s:14:"account_number";s:0:"";s:9:"bank_name";s:0:"";s:10:"short_code";s:0:"";s:4:"iban";s:0:"";s:5:"swift";s:0:"";}}s:3:"cod";a:4:{s:13:"enable_option";s:3:"yes";s:12:"method_title";s:16:"Cash on Delivery";s:18:"method_description";s:28:"Pay with cash upon delivery.";s:19:"method_instructions";s:28:"Pay with cash upon delivery.";}s:6:"paypal";a:6:{s:13:"enable_option";s:0:"";s:12:"method_title";s:6:"Paypal";s:16:"paypal_client_id";s:0:"";s:13:"paypal_secret";s:0:"";s:28:"paypal_sandbox_enable_option";s:3:"yes";s:18:"method_description";s:85:"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.";}s:6:"stripe";a:8:{s:13:"enable_option";s:0:"";s:12:"method_title";s:6:"Stripe";s:15:"test_secret_key";s:0:"";s:20:"test_publishable_key";s:0:"";s:15:"live_secret_key";s:0:"";s:20:"live_publishable_key";s:0:"";s:25:"stripe_test_enable_option";s:3:"yes";s:18:"method_description";s:49:"Stripe is a simple way to accept payments online.";}}', '2018-06-28 00:58:41', '2018-06-28 01:02:52'),
	(5, '_appearance_tab_data', 'a:7:{s:8:"settings";s:233:"{"header_slider_images_and_text":{"slider_images":[{"id":"A5F0BC5F-3768-4A84-B051-FDB25F7BA69D","url":"http://localhost:8080/shopist/public/uploads/01530147950w-1920-h-800-01516729605w-1920-h-800-T-Shirt-jpg.jpg"}],"slider_text":[]}}";s:16:"settings_details";a:4:{s:7:"general";a:20:{s:10:"custom_css";b:1;s:13:"body_bg_color";s:6:"D2D6DE";s:16:"filter_price_min";s:1:"0";s:16:"filter_price_max";s:4:"1000";s:22:"sidebar_panel_bg_color";s:6:"C2C0C1";s:30:"sidebar_panel_title_text_color";s:6:"333333";s:44:"sidebar_panel_title_text_bottom_border_color";s:6:"E8CA05";s:34:"sidebar_panel_title_text_font_size";s:2:"14";s:32:"sidebar_panel_content_text_color";s:6:"333333";s:36:"sidebar_panel_content_text_font_size";s:2:"12";s:20:"product_box_bg_color";s:6:"C2C0C1";s:24:"product_box_border_color";s:6:"E1E1E1";s:22:"product_box_text_color";s:6:"333333";s:26:"product_box_text_font_size";s:2:"13";s:24:"product_box_btn_bg_color";s:6:"E8CA05";s:27:"product_box_btn_hover_color";s:6:"C2C0C1";s:14:"btn_text_color";s:6:"FFFFFF";s:20:"btn_hover_text_color";s:6:"444444";s:26:"selected_menu_border_color";s:6:"E8CA05";s:32:"pages_content_title_border_color";s:6:"E8CA05";}s:14:"header_details";a:12:{s:17:"slider_visibility";b:1;s:10:"custom_css";b:1;s:31:"header_top_gradient_start_color";s:6:"272727";s:29:"header_top_gradient_end_color";s:6:"272727";s:34:"header_bottom_gradient_start_color";s:6:"1E1E1E";s:32:"header_bottom_gradient_end_color";s:6:"1E1E1E";s:17:"header_text_color";s:6:"B4B1AB";s:16:"header_text_size";s:2:"14";s:23:"header_text_hover_color";s:6:"E8CA05";s:29:"header_selected_menu_bg_color";s:6:"C0C0C0";s:31:"header_selected_menu_text_color";s:6:"E8CA05";s:13:"header_slogan";s:23:"Default welcome message";}s:12:"home_details";a:2:{s:19:"cat_list_to_display";N;s:30:"cat_collection_list_to_display";N;}s:14:"footer_details";a:2:{s:27:"footer_about_us_description";s:271:"                                                                                          Your description here            \r\n                              \r\n                              \r\n                              \r\n                              \r\n                  ";s:13:"follow_us_url";a:7:{s:2:"fb";s:0:"";s:7:"twitter";s:0:"";s:8:"linkedin";s:0:"";s:8:"dribbble";s:0:"";s:11:"google_plus";s:0:"";s:9:"instagram";s:0:"";s:7:"youtube";s:0:"";}}}s:6:"header";s:11:"black-again";s:4:"home";s:8:"customfy";s:8:"products";s:5:"crazy";s:14:"single_product";s:5:"crazy";s:5:"blogs";s:5:"crazy";}', '2018-06-28 00:58:41', '2018-06-28 03:09:17'),
	(6, '_permissions_files_list', 'a:34:{s:12:"manage_pages";s:12:"Manage Pages";s:21:"add_edit_delete_pages";s:21:"Add/Edit/delete Pages";s:19:"manage_blog_manager";s:19:"Manage Blog Manager";s:9:"all_blogs";s:16:"Access Blog List";s:13:"add_edit_blog";s:13:"Add/Edit Blog";s:11:"delete_blog";s:11:"Delete Blog";s:17:"all_blog_comments";s:20:"Access Blog Comments";s:15:"blog_categories";s:24:"Add/Edit Blog Categories";s:18:"manage_testimonial";s:18:"Manage Testimonial";s:15:"all_testimonial";s:23:"Access Testimonial List";s:20:"add_edit_testimonial";s:20:"Add/Edit Testimonial";s:18:"delete_testimonial";s:18:"Delete Testimonial";s:15:"manage_products";s:15:"Manage Products";s:12:"all_products";s:20:"Access Products List";s:16:"add_edit_product";s:16:"Add/Edit Product";s:14:"delete_product";s:14:"Delete Product";s:18:"product_categories";s:28:"Add/Edit Products Categories";s:12:"product_tags";s:22:"Add/Edit Products Tags";s:18:"product_attributes";s:28:"Add/Edit Products Attributes";s:14:"product_colors";s:24:"Add/Edit Products Colors";s:13:"product_sizes";s:23:"Add/Edit Products Sizes";s:24:"manage_products_comments";s:24:"Manage Products Comments";s:22:"manage_shipping_method";s:22:"Manage Shipping Method";s:21:"manage_payment_method";s:21:"Manage Payment Method";s:13:"manage_brands";s:13:"Manage Brands";s:24:"manage_designer_elements";s:31:"Manage Custom Designer Elements";s:13:"manage_orders";s:13:"Manage Orders";s:14:"manage_reports";s:14:"Manage Reports";s:13:"manage_coupon";s:21:"Manage Coupon Manager";s:10:"manage_seo";s:18:"Manage seo Manager";s:24:"manage_requested_product";s:23:"Manage Request Products";s:19:"manage_subscription";s:19:"Manage Subscription";s:21:"manage_extra_features";s:21:"Manage Extra Features";s:15:"manage_settings";s:15:"Manage Settings";}', '2018-06-28 00:58:41', '2018-06-28 00:58:41'),
	(7, '_seo_data', 'a:1:{s:8:"meta_tag";a:2:{s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";}}', '2018-06-28 00:58:41', '2018-06-28 00:58:41'),
	(8, '_subscription_data', 'a:1:{s:9:"mailchimp";a:2:{s:7:"api_key";s:0:"";s:7:"list_id";s:0:"";}}', '2018-06-28 00:58:41', '2018-06-28 00:58:41'),
	(9, '_subscription_settings_data', 'a:9:{s:23:"subscription_visibility";b:1;s:14:"subscribe_type";s:9:"mailchimp";s:17:"subscribe_options";s:10:"name_email";s:14:"popup_bg_color";s:6:"f5f5f5";s:13:"popup_content";s:0:"";s:18:"popup_display_page";a:2:{i:0;s:4:"home";i:1;s:4:"shop";}s:18:"subscribe_btn_text";s:13:"Subscribe Now";s:37:"subscribe_popup_cookie_set_visibility";b:1;s:31:"subscribe_popup_cookie_set_text";s:31:"No thanks, i am not interested!";}', '2018-06-28 00:58:41', '2018-06-28 00:58:41');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.orders_items
CREATE TABLE IF NOT EXISTS `orders_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `order_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.orders_items: ~0 rows (aproximadamente)
DELETE FROM `orders_items`;
/*!40000 ALTER TABLE `orders_items` DISABLE KEYS */;
INSERT INTO `orders_items` (`id`, `order_id`, `order_data`, `created_at`, `updated_at`) VALUES
	(1, 2, '{"1":{"id":1,"name":"AMBAR IPA ","quantity":1,"price":"11","order_price":"11","img_src":"http:\\/\\/localhost:8080\\/resources\\/assets\\/images\\/no-image.png","variation_id":null,"options":[],"tax":false,"product_type":"simple_product","acces_token":""}}', '2018-06-28 03:21:36', '2018-06-28 03:21:36');
/*!40000 ALTER TABLE `orders_items` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_author_id` int(10) unsigned NOT NULL,
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `post_status` int(10) unsigned NOT NULL,
  `post_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.posts: ~0 rows (aproximadamente)
DELETE FROM `posts`;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `post_author_id`, `post_content`, `post_title`, `post_slug`, `parent_id`, `post_status`, `post_type`, `created_at`, `updated_at`) VALUES
	(1, 1, '          &lt;p&gt;Ambar Ipa&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;           \r\n          ', 'AMBAR IPA ', 'ambar-ipa', 0, 1, 'product', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(2, 1, 'Customer Shop Order', 'shop order', 'shop-order', 0, 1, 'shop_order', '2018-06-28 03:21:35', '2018-06-28 03:21:35');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.post_extras
CREATE TABLE IF NOT EXISTS `post_extras` (
  `post_extra_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `key_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_extra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.post_extras: ~88 rows (aproximadamente)
DELETE FROM `post_extras`;
/*!40000 ALTER TABLE `post_extras` DISABLE KEYS */;
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES
	(1, 1, '_product_related_images_url', '{"product_image":"","product_gallery_images":[],"shop_banner_image":""}', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(2, 1, '_product_type', 'simple_product', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(3, 1, '_product_sku', '12', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(4, 1, '_product_regular_price', '13', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(5, 1, '_product_sale_price', '11', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(6, 1, '_product_price', '11', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(7, 1, '_product_sale_price_start_date', '', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(8, 1, '_product_sale_price_end_date', '', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(9, 1, '_product_manage_stock', 'no', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(10, 1, '_product_manage_stock_qty', '10', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(11, 1, '_product_manage_stock_back_to_order', 'not_allow', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(12, 1, '_product_manage_stock_availability', 'in_stock', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(13, 1, '_product_extra_features', '                                        \r\n                      ', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(14, 1, '_product_enable_as_recommended', 'no', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(15, 1, '_product_enable_as_features', 'no', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(16, 1, '_product_enable_as_latest', 'no', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(17, 1, '_product_enable_as_related', 'yes', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(18, 1, '_product_enable_as_custom_design', 'yes', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(19, 1, '_product_enable_as_selected_cat', 'yes', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(20, 1, '_product_enable_taxes', 'no', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(21, 1, '_product_custom_designer_settings', 'a:3:{s:16:"canvas_dimension";a:3:{s:13:"small_devices";a:2:{s:5:"width";s:3:"280";s:6:"height";s:3:"300";}s:14:"medium_devices";a:2:{s:5:"width";s:3:"480";s:6:"height";s:3:"480";}s:13:"large_devices";a:2:{s:5:"width";s:3:"500";s:6:"height";s:3:"550";}}s:25:"enable_layout_at_frontend";s:2:"no";s:22:"enable_global_settings";s:2:"no";}', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(22, 1, '_product_custom_designer_data', '', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(23, 1, '_product_enable_reviews', 'yes', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(24, 1, '_product_enable_reviews_add_link_to_product_page', 'yes', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(25, 1, '_product_enable_reviews_add_link_to_details_page', 'yes', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(26, 1, '_product_enable_video_feature', 'no', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(27, 1, '_product_video_feature_display_mode', 'content', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(28, 1, '_product_video_feature_title', '', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(29, 1, '_product_video_feature_panel_size', 'a:2:{s:5:"width";s:0:"";s:6:"height";s:0:"";}', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(30, 1, '_product_video_feature_source', '', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(31, 1, '_product_video_feature_source_embedded_code', '', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(32, 1, '_product_video_feature_source_online_url', '', '2018-06-28 01:10:20', '2018-06-28 03:20:44'),
	(33, 1, '_product_enable_manufacturer', 'no', '2018-06-28 01:10:20', '2018-06-28 03:20:45'),
	(34, 1, '_product_enable_visibility_schedule', 'no', '2018-06-28 01:10:20', '2018-06-28 03:20:45'),
	(35, 1, '_product_seo_title', 'AMBAR IPA ', '2018-06-28 01:10:20', '2018-06-28 03:20:45'),
	(36, 1, '_product_seo_description', '', '2018-06-28 01:10:20', '2018-06-28 03:20:45'),
	(37, 1, '_product_seo_keywords', '', '2018-06-28 01:10:20', '2018-06-28 03:20:45'),
	(38, 1, '_product_compare_data', 'N;', '2018-06-28 01:10:20', '2018-06-28 03:20:45'),
	(39, 1, '_is_role_based_pricing_enable', 'no', '2018-06-28 01:10:20', '2018-06-28 03:20:45'),
	(40, 1, '_role_based_pricing', 'a:2:{s:13:"administrator";a:2:{s:13:"regular_price";s:0:"";s:10:"sale_price";s:0:"";}s:9:"site-user";a:2:{s:13:"regular_price";s:0:"";s:10:"sale_price";s:0:"";}}', '2018-06-28 01:10:20', '2018-06-28 03:20:45'),
	(41, 1, '_downloadable_product_files', 'a:0:{}', '2018-06-28 01:10:20', '2018-06-28 03:20:45'),
	(42, 1, '_downloadable_product_download_limit', '', '2018-06-28 01:10:20', '2018-06-28 03:20:45'),
	(43, 1, '_downloadable_product_download_expiry', '', '2018-06-28 01:10:20', '2018-06-28 03:20:45'),
	(44, 1, '_total_sales', '1', '2018-06-28 03:21:35', '2018-06-28 03:21:35'),
	(45, 2, '_order_currency', 'ARS', '2018-06-28 03:21:35', '2018-06-28 03:21:35'),
	(46, 2, '_customer_ip_address', '::1', '2018-06-28 03:21:35', '2018-06-28 03:21:35'),
	(47, 2, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2018-06-28 03:21:35', '2018-06-28 03:21:35'),
	(48, 2, '_customer_user', 'a:2:{s:9:"user_mode";s:5:"guest";s:7:"user_id";i:1;}', '2018-06-28 03:21:35', '2018-06-28 03:21:35'),
	(49, 2, '_order_shipping_cost', '0', '2018-06-28 03:21:35', '2018-06-28 03:21:35'),
	(50, 2, '_final_order_shipping_cost', '0', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(51, 2, '_order_shipping_method', '', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(52, 2, '_payment_method', 'cod', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(53, 2, '_payment_method_title', 'cod', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(54, 2, '_order_tax', '0', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(55, 2, '_final_order_tax', '0', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(56, 2, '_order_total', '11', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(57, 2, '_final_order_total', '11', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(58, 2, '_order_notes', 'wachi', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(59, 2, '_order_status', 'on-hold', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(60, 2, '_order_discount', '0', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(61, 2, '_final_order_discount', '0', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(62, 2, '_order_coupon_code', '', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(63, 2, '_is_order_coupon_applyed', '0', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(64, 2, '_order_process_key', '1530156095149334226148459433', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(65, 2, '_billing_title', 'asd', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(66, 2, '_billing_first_name', 'ads', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(67, 2, '_billing_last_name', 'asd', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(68, 2, '_billing_company', 'asd', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(69, 2, '_billing_email', 'cad2@cad2.org.ar', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(70, 2, '_billing_phone', '', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(71, 2, '_billing_fax', '', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(72, 2, '_billing_country', 'AR', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(73, 2, '_billing_address_1', 'asd 12', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(74, 2, '_billing_address_2', '', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(75, 2, '_billing_city', 'Rosario', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(76, 2, '_billing_postcode', '2000', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(77, 2, '_shipping_title', 'asd', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(78, 2, '_shipping_first_name', 'ads', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(79, 2, '_shipping_last_name', 'asd', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(80, 2, '_shipping_company', 'asd', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(81, 2, '_shipping_email', 'cad2@cad2.org.ar', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(82, 2, '_shipping_phone', '', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(83, 2, '_shipping_fax', '', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(84, 2, '_shipping_country', 'AR', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(85, 2, '_shipping_address_1', 'asd 12', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(86, 2, '_shipping_address_2', '', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(87, 2, '_shipping_city', 'Rosario', '2018-06-28 03:21:36', '2018-06-28 03:21:36'),
	(88, 2, '_shipping_postcode', '2000', '2018-06-28 03:21:36', '2018-06-28 03:21:36');
/*!40000 ALTER TABLE `post_extras` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.request_products
CREATE TABLE IF NOT EXISTS `request_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.request_products: ~0 rows (aproximadamente)
DELETE FROM `request_products`;
/*!40000 ALTER TABLE `request_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_products` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.roles: ~2 rows (aproximadamente)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `role_name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'administrator', '2018-06-28 00:58:40', '2018-06-28 00:58:40'),
	(2, 'Site User', 'site-user', '2018-06-28 00:58:40', '2018-06-28 00:58:40');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.role_user: ~0 rows (aproximadamente)
DELETE FROM `role_user`;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2018-06-28 00:58:41', '2018-06-28 00:58:41');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.save_custom_designs
CREATE TABLE IF NOT EXISTS `save_custom_designs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `design_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.save_custom_designs: ~0 rows (aproximadamente)
DELETE FROM `save_custom_designs`;
/*!40000 ALTER TABLE `save_custom_designs` DISABLE KEYS */;
/*!40000 ALTER TABLE `save_custom_designs` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.subscriptions
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.subscriptions: ~0 rows (aproximadamente)
DELETE FROM `subscriptions`;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.terms
CREATE TABLE IF NOT EXISTS `terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.terms: ~4 rows (aproximadamente)
DELETE FROM `terms`;
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;
INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'IPA', 'ipa', 'product_cat', 0, 1, '2018-06-28 01:07:14', '2018-06-28 01:07:14'),
	(2, 'ambar', 'ambar', 'product_colors', 0, 1, '2018-06-28 01:07:52', '2018-06-28 01:07:52'),
	(3, 'ibu', 'ibu', 'product_sizes', 0, 1, '2018-06-28 01:08:05', '2018-06-28 01:08:05'),
	(4, 'IBU', 'ibu-2', 'product_attr', 0, 1, '2018-06-28 01:08:27', '2018-06-28 01:08:27'),
	(5, 'IBU', 'ibu-3', 'product_attr', 0, 1, '2018-06-28 01:08:35', '2018-06-28 01:08:35');
/*!40000 ALTER TABLE `terms` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.term_extras
CREATE TABLE IF NOT EXISTS `term_extras` (
  `term_extra_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` int(10) unsigned NOT NULL,
  `key_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`term_extra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.term_extras: ~5 rows (aproximadamente)
DELETE FROM `term_extras`;
/*!40000 ALTER TABLE `term_extras` DISABLE KEYS */;
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES
	(1, 1, '_category_description', 'Ipas', '2018-06-28 01:07:14', '2018-06-28 01:07:14'),
	(2, 1, '_category_img_url', '', '2018-06-28 01:07:14', '2018-06-28 01:07:14'),
	(3, 2, '_product_color_code', 'FFDB4D', '2018-06-28 01:07:52', '2018-06-28 01:07:52'),
	(4, 4, '_product_attr_values', '15', '2018-06-28 01:08:27', '2018-06-28 01:08:27'),
	(5, 5, '_product_attr_values', '17', '2018-06-28 01:08:35', '2018-06-28 01:08:35');
/*!40000 ALTER TABLE `term_extras` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `user_photo_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_status` int(10) unsigned NOT NULL,
  `secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.users: ~0 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `display_name`, `name`, `email`, `password`, `user_photo_url`, `user_status`, `secret_key`, `created_at`, `updated_at`) VALUES
	(1, 'Robertino', 'robertino', 'roberbris@gmail.com', '$2y$10$TRAODzIrbGftEKWEGrBRyOFqBkB8GBAgz0OGQNpRiY98aLKEKAJIG', '', 1, '$2y$10$sOKgKAVcEVTm5JxXpRMkfuTmhuEg5wpbnjPQrARG7W2SzoHeMl.dG', '2018-06-28 00:58:41', '2018-06-28 02:55:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.users_custom_designs
CREATE TABLE IF NOT EXISTS `users_custom_designs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `access_token` text COLLATE utf8_unicode_ci NOT NULL,
  `design_images` longtext COLLATE utf8_unicode_ci NOT NULL,
  `design_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.users_custom_designs: ~0 rows (aproximadamente)
DELETE FROM `users_custom_designs`;
/*!40000 ALTER TABLE `users_custom_designs` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_custom_designs` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.users_details
CREATE TABLE IF NOT EXISTS `users_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.users_details: ~0 rows (aproximadamente)
DELETE FROM `users_details`;
/*!40000 ALTER TABLE `users_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_details` ENABLE KEYS */;

-- Volcando estructura para tabla scozz.user_role_permissions
CREATE TABLE IF NOT EXISTS `user_role_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla scozz.user_role_permissions: ~0 rows (aproximadamente)
DELETE FROM `user_role_permissions`;
/*!40000 ALTER TABLE `user_role_permissions` DISABLE KEYS */;
INSERT INTO `user_role_permissions` (`id`, `role_id`, `permissions`, `created_at`, `updated_at`) VALUES
	(1, 1, 'a:35:{i:0;s:12:"manage_pages";i:1;s:21:"add_edit_delete_pages";i:2;s:19:"manage_blog_manager";i:3;s:9:"all_blogs";i:4;s:13:"add_edit_blog";i:5;s:11:"delete_blog";i:6;s:17:"all_blog_comments";i:7;s:15:"blog_categories";i:8;s:18:"manage_testimonial";i:9;s:15:"all_testimonial";i:10;s:20:"add_edit_testimonial";i:11;s:18:"delete_testimonial";i:12;s:15:"manage_products";i:13;s:12:"all_products";i:14;s:16:"add_edit_product";i:15;s:14:"delete_product";i:16;s:18:"product_categories";i:17;s:12:"product_tags";i:18;s:18:"product_attributes";i:19;s:14:"product_colors";i:20;s:13:"product_sizes";i:21;s:24:"manage_products_comments";i:22;s:22:"manage_shipping_method";i:23;s:21:"manage_payment_method";i:24;s:13:"manage_brands";i:25;s:24:"manage_designer_elements";i:26;s:13:"manage_orders";i:27;s:14:"manage_reports";i:28;s:11:"manage_user";i:29;s:13:"manage_coupon";i:30;s:10:"manage_seo";i:31;s:24:"manage_requested_product";i:32;s:19:"manage_subscription";i:33;s:21:"manage_extra_features";i:34;s:15:"manage_settings";}', '2018-06-28 00:58:41', '2018-06-28 00:58:41');
/*!40000 ALTER TABLE `user_role_permissions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
