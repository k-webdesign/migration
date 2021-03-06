#
# SQL Export
# Created by Querious (931)
# Created: 11. September 2014 17:33:20 MESZ
# Encoding: Unicode (UTF-8)
#


DROP TABLE IF EXISTS `tl_files`;
DROP TABLE IF EXISTS `tl_version`;
DROP TABLE IF EXISTS `tl_user_group`;
DROP TABLE IF EXISTS `tl_user`;
DROP TABLE IF EXISTS `tl_page`;
DROP TABLE IF EXISTS `tl_module`;
DROP TABLE IF EXISTS `tl_iso_tax_rate`;
DROP TABLE IF EXISTS `tl_iso_tax_class`;
DROP TABLE IF EXISTS `tl_iso_shipping_options`;
DROP TABLE IF EXISTS `tl_iso_shipping_modules`;
DROP TABLE IF EXISTS `tl_iso_rules`;
DROP TABLE IF EXISTS `tl_iso_rule_usage`;
DROP TABLE IF EXISTS `tl_iso_rule_restrictions`;
DROP TABLE IF EXISTS `tl_iso_requestcache`;
DROP TABLE IF EXISTS `tl_iso_related_products`;
DROP TABLE IF EXISTS `tl_iso_related_categories`;
DROP TABLE IF EXISTS `tl_iso_producttypes`;
DROP TABLE IF EXISTS `tl_iso_products`;
DROP TABLE IF EXISTS `tl_iso_productcache`;
DROP TABLE IF EXISTS `tl_iso_product_categories`;
DROP TABLE IF EXISTS `tl_iso_prices`;
DROP TABLE IF EXISTS `tl_iso_price_tiers`;
DROP TABLE IF EXISTS `tl_iso_payment_modules`;
DROP TABLE IF EXISTS `tl_iso_orderstatus`;
DROP TABLE IF EXISTS `tl_iso_orders`;
DROP TABLE IF EXISTS `tl_iso_order_items`;
DROP TABLE IF EXISTS `tl_iso_order_downloads`;
DROP TABLE IF EXISTS `tl_iso_mail_content`;
DROP TABLE IF EXISTS `tl_iso_mail`;
DROP TABLE IF EXISTS `tl_iso_labels`;
DROP TABLE IF EXISTS `tl_iso_groups`;
DROP TABLE IF EXISTS `tl_iso_downloads`;
DROP TABLE IF EXISTS `tl_iso_config`;
DROP TABLE IF EXISTS `tl_iso_cart_items`;
DROP TABLE IF EXISTS `tl_iso_cart`;
DROP TABLE IF EXISTS `tl_iso_baseprice`;
DROP TABLE IF EXISTS `tl_iso_attributes`;
DROP TABLE IF EXISTS `tl_iso_addresses`;


CREATE TABLE `tl_files` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `pid` binary(16) DEFAULT NULL,
    `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
    `uuid` binary(16) DEFAULT NULL,
    `type` varchar(16) NOT NULL DEFAULT '',
    `path` varchar(1022) NOT NULL DEFAULT '',
    `extension` varchar(16) NOT NULL DEFAULT '',
    `hash` varchar(32) NOT NULL DEFAULT '',
    `found` char(1) NOT NULL DEFAULT '1',
    `name` varchar(255) NOT NULL DEFAULT '',
    `meta` blob,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uuid` (`uuid`),
    KEY `pid` (`pid`),
    KEY `extension` (`extension`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` int(2) unsigned NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `salutation` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `street_1` varchar(255) NOT NULL DEFAULT '',
  `street_2` varchar(255) NOT NULL DEFAULT '',
  `street_3` varchar(255) NOT NULL DEFAULT '',
  `postal` varchar(32) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `subdivision` varchar(10) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT '',
  `phone` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `isDefaultShipping` char(1) NOT NULL DEFAULT '',
  `isDefaultBilling` char(1) NOT NULL DEFAULT '',
  `vat_no` varchar(255) NOT NULL DEFAULT '',
  `vat_no_ok` varchar(16) NOT NULL DEFAULT 'nok',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `legend` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `options` blob,
  `customer_defined` char(1) NOT NULL DEFAULT '',
  `mandatory` char(1) NOT NULL DEFAULT '',
  `fe_filter` char(1) NOT NULL DEFAULT '',
  `fe_search` char(1) NOT NULL DEFAULT '',
  `fe_sorting` char(1) NOT NULL DEFAULT '',
  `multiple` char(1) NOT NULL DEFAULT '',
  `size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `extensions` varchar(255) NOT NULL DEFAULT '',
  `be_filter` char(1) NOT NULL DEFAULT '',
  `be_search` char(1) NOT NULL DEFAULT '',
  `multilingual` char(1) NOT NULL DEFAULT '',
  `variant_option` char(1) NOT NULL DEFAULT '',
  `invisible` char(1) NOT NULL DEFAULT '',
  `foreignKey` text,
  `rte` varchar(255) NOT NULL DEFAULT '',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `rgxp` varchar(255) NOT NULL DEFAULT '',
  `conditionField` varchar(30) NOT NULL DEFAULT '',
  `gallery` varchar(64) NOT NULL DEFAULT '',
  `files` char(1) NOT NULL DEFAULT '',
  `filesOnly` char(1) NOT NULL DEFAULT '',
  `fieldType` varchar(8) NOT NULL DEFAULT '',
  `sortBy` varchar(32) NOT NULL DEFAULT '',
  `storeFile` char(1) NOT NULL DEFAULT '',
  `uploadFolder` varchar(255) NOT NULL DEFAULT '',
  `useHomeDir` char(1) NOT NULL DEFAULT '',
  `doNotOverwrite` char(1) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `datepicker` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_baseprice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `amount` varchar(32) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `session` varchar(64) NOT NULL DEFAULT '',
  `store_id` int(2) unsigned NOT NULL DEFAULT '0',
  `settings` blob,
  `coupons` blob,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`store_id`),
  KEY `session` (`session`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_cart_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_sku` varchar(128) NOT NULL DEFAULT '',
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `product_options` blob,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `href_reader` varchar(255) NOT NULL DEFAULT '',
  `tax_free_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `store_id` int(2) unsigned NOT NULL DEFAULT '0',
  `priceCalculateFactor` varchar(10) NOT NULL DEFAULT '',
  `priceCalculateMode` varchar(3) NOT NULL DEFAULT '',
  `priceRoundPrecision` int(1) unsigned NOT NULL DEFAULT '2',
  `priceRoundIncrement` varchar(4) NOT NULL DEFAULT '',
  `cartMinSubtotal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(3) NOT NULL DEFAULT '',
  `currencyFormat` varchar(20) NOT NULL DEFAULT '',
  `currencyPosition` varchar(5) NOT NULL DEFAULT '',
  `currencySymbol` char(1) NOT NULL DEFAULT '',
  `currencySpace` char(1) NOT NULL DEFAULT '',
  `currencyAutomator` char(1) NOT NULL DEFAULT '',
  `currencyOrigin` varchar(3) NOT NULL DEFAULT '',
  `currencyProvider` varchar(32) NOT NULL DEFAULT '',
  `orderPrefix` varchar(255) NOT NULL DEFAULT '',
  `orderDigits` int(1) unsigned NOT NULL DEFAULT '4',
  `templateGroup` varchar(255) NOT NULL DEFAULT '',
  `invoiceLogo` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `street_1` varchar(255) NOT NULL DEFAULT '',
  `street_2` varchar(255) NOT NULL DEFAULT '',
  `street_3` varchar(255) NOT NULL DEFAULT '',
  `postal` varchar(32) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `subdivision` varchar(10) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `shipping_countries` blob,
  `shipping_fields` blob,
  `billing_countries` blob,
  `billing_fields` blob,
  `phone` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `limitMemberCountries` char(1) NOT NULL DEFAULT '',
  `gallery` varchar(64) NOT NULL DEFAULT '',
  `missing_image_placeholder` varchar(255) NOT NULL DEFAULT '',
  `imageSizes` blob,
  `orderstatus_new` int(10) unsigned NOT NULL DEFAULT '0',
  `orderstatus_error` int(10) unsigned NOT NULL DEFAULT '0',
  `billing_country` varchar(2) NOT NULL DEFAULT '',
  `shipping_country` varchar(2) NOT NULL DEFAULT '',
  `vat_no` varchar(255) NOT NULL DEFAULT '',
  `germanize` char(1) NOT NULL DEFAULT '',
  `shipping_note` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_page` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_target` char(1) NOT NULL DEFAULT '',
  `shipping_rel` varchar(255) NOT NULL DEFAULT '',
  `checkout_pages` blob,
  `netprice_groups` blob,
  `vatcheck_guests` char(1) NOT NULL DEFAULT '',
  `vatcheck_member` char(1) NOT NULL DEFAULT '',
  `vatcheck_groups` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `singleSRC` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `downloads_allowed` int(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(8) NOT NULL DEFAULT 'file',
  `expires` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `product_type` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_labels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(2) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `replacement` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_mail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `senderName` varchar(255) NOT NULL DEFAULT '',
  `sender` varchar(255) NOT NULL DEFAULT '',
  `cc` varchar(255) NOT NULL DEFAULT '',
  `bcc` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `attachDocument` char(1) NOT NULL DEFAULT '',
  `documentTemplate` varchar(255) NOT NULL DEFAULT '',
  `documentTitle` varchar(255) NOT NULL DEFAULT '',
  `priority` int(1) unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_mail_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `text` text,
  `textOnly` char(1) NOT NULL DEFAULT '',
  `html` text,
  `attachments` blob,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_order_downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `download_id` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads_remaining` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_sku` varchar(128) NOT NULL DEFAULT '',
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `product_options` blob,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `tax_free_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `settings` blob,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `date_paid` varchar(10) NOT NULL DEFAULT '',
  `date_shipped` varchar(10) NOT NULL DEFAULT '',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` varchar(14) NOT NULL DEFAULT '',
  `uniqid` varchar(27) NOT NULL DEFAULT '',
  `config_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cart_id` int(10) unsigned NOT NULL DEFAULT '0',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_id` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(2) NOT NULL DEFAULT '',
  `shipping_address` blob,
  `billing_address` blob,
  `checkout_info` blob,
  `surcharges` blob,
  `coupons` blob,
  `payment_data` blob,
  `shipping_data` blob,
  `subTotal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `grandTotal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `cc_num` varchar(64) NOT NULL DEFAULT '',
  `cc_type` varchar(32) NOT NULL DEFAULT '',
  `cc_exp` varchar(16) NOT NULL DEFAULT '',
  `cc_cvv` varchar(8) NOT NULL DEFAULT '',
  `currency` varchar(4) NOT NULL DEFAULT '',
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_orderstatus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `paid` char(1) NOT NULL DEFAULT '',
  `welcomescreen` char(1) NOT NULL DEFAULT '',
  `mail_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_admin` int(10) unsigned NOT NULL DEFAULT '0',
  `sales_email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_payment_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `note` text,
  `price` varchar(16) NOT NULL DEFAULT '',
  `tax_class` int(10) NOT NULL DEFAULT '0',
  `countries` blob,
  `shipping_modules` blob,
  `product_types` blob,
  `allowed_cc_types` text,
  `minimum_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `maximum_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `new_order_status` int(10) unsigned NOT NULL DEFAULT '0',
  `trans_type` varchar(8) NOT NULL DEFAULT '',
  `paypal_account` varchar(255) NOT NULL DEFAULT '',
  `postfinance_pspid` varchar(255) NOT NULL DEFAULT '',
  `postfinance_secret` varchar(255) NOT NULL DEFAULT '',
  `postfinance_method` varchar(4) NOT NULL DEFAULT '',
  `authorize_login` varchar(255) NOT NULL DEFAULT '',
  `authorize_trans_key` varchar(255) NOT NULL DEFAULT '',
  `authorize_delimiter` varchar(4) NOT NULL DEFAULT '',
  `authorize_trans_type` varchar(32) NOT NULL DEFAULT '',
  `authorize_relay_response` char(1) NOT NULL DEFAULT '',
  `authorize_email_customer` char(1) NOT NULL DEFAULT '',
  `requireCCV` char(1) NOT NULL DEFAULT '',
  `button` varchar(255) NOT NULL DEFAULT '',
  `guests` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `debug` char(1) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_price_tiers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `min` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `tax_class` int(10) unsigned NOT NULL DEFAULT '0',
  `config_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_group` int(10) unsigned NOT NULL DEFAULT '0',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_productcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL DEFAULT '0',
  `module_id` int(10) unsigned NOT NULL DEFAULT '0',
  `requestcache_id` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `products` blob,
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`module_id`,`requestcache_id`,`keywords`,`expires`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `gid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(2) NOT NULL DEFAULT '',
  `pages` blob,
  `inherit` blob,
  `alias` varchar(128) NOT NULL DEFAULT '',
  `sku` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `images` blob,
  `teaser` text,
  `description` text,
  `keywords_meta` text,
  `description_meta` text,
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `shipping_weight` varchar(255) NOT NULL DEFAULT '',
  `shipping_exempt` char(1) NOT NULL DEFAULT '',
  `tax_class` int(10) unsigned NOT NULL DEFAULT '0',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `baseprice` varchar(255) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `pid` (`pid`,`language`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_producttypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(32) NOT NULL DEFAULT 'regular',
  `fallback` char(1) NOT NULL DEFAULT '',
  `description` text,
  `prices` char(1) NOT NULL DEFAULT '',
  `list_template` varchar(255) NOT NULL DEFAULT '',
  `reader_template` varchar(255) NOT NULL DEFAULT '',
  `attributes` blob,
  `variants` char(1) NOT NULL DEFAULT '',
  `variant_attributes` blob,
  `force_variant_options` char(1) NOT NULL DEFAULT '',
  `downloads` char(1) NOT NULL DEFAULT '',
  `show_price_tiers` char(1) NOT NULL DEFAULT '',
  `shipping_exempt` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_related_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_related_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `category` int(10) unsigned NOT NULL DEFAULT '0',
  `products` blob,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_requestcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `filters` blob,
  `sorting` blob,
  `limits` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_rule_restrictions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`type`),
  KEY `type` (`type`,`object_id`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_rule_usage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `config_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `applyTo` varchar(8) NOT NULL DEFAULT '',
  `discount` varchar(16) NOT NULL DEFAULT '',
  `tax_class` int(10) NOT NULL DEFAULT '0',
  `enableCode` char(1) NOT NULL DEFAULT '',
  `code` varchar(255) NOT NULL DEFAULT '',
  `minItemQuantity` int(10) unsigned NOT NULL DEFAULT '0',
  `maxItemQuantity` int(10) unsigned NOT NULL DEFAULT '0',
  `quantityMode` varchar(32) NOT NULL DEFAULT '',
  `limitPerMember` int(10) unsigned NOT NULL DEFAULT '0',
  `limitPerConfig` int(10) unsigned NOT NULL DEFAULT '0',
  `startDate` varchar(10) NOT NULL DEFAULT '',
  `endDate` varchar(10) NOT NULL DEFAULT '',
  `startTime` varchar(10) NOT NULL DEFAULT '',
  `endTime` varchar(10) NOT NULL DEFAULT '',
  `configRestrictions` char(1) NOT NULL DEFAULT '',
  `configCondition` char(1) NOT NULL DEFAULT '',
  `memberRestrictions` varchar(32) NOT NULL DEFAULT '',
  `memberCondition` char(1) NOT NULL DEFAULT '',
  `productRestrictions` varchar(32) NOT NULL DEFAULT '',
  `productCondition` char(1) NOT NULL DEFAULT '',
  `attributeName` varchar(32) NOT NULL DEFAULT '',
  `attributeCondition` varchar(8) NOT NULL DEFAULT '',
  `attributeValue` varchar(255) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT '',
  `minSubtotal` int(10) unsigned NOT NULL DEFAULT '0',
  `maxSubtotal` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_shipping_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `note` text,
  `tax_class` int(10) NOT NULL DEFAULT '0',
  `countries` blob,
  `subdivisions` longblob,
  `postalCodes` text,
  `minimum_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `maximum_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `product_types` blob,
  `price` varchar(16) NOT NULL DEFAULT '',
  `surcharge_field` varchar(255) NOT NULL DEFAULT '',
  `flatCalculation` varchar(10) NOT NULL DEFAULT '',
  `weight_unit` varchar(5) NOT NULL DEFAULT '',
  `guests` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `enabled` char(1) NOT NULL DEFAULT '',
  `ups_accessKey` varchar(255) NOT NULL DEFAULT '',
  `ups_userName` varchar(255) NOT NULL DEFAULT '',
  `ups_password` varchar(255) NOT NULL DEFAULT '',
  `ups_enabledService` varchar(255) NOT NULL DEFAULT '',
  `usps_userName` varchar(255) NOT NULL DEFAULT '',
  `usps_enabledService` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_shipping_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `minimum_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `maximum_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `weight_from` varchar(32) NOT NULL DEFAULT '0',
  `weight_to` varchar(32) NOT NULL DEFAULT '0',
  `enabled` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_tax_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `applyRoundingIncrement` char(1) NOT NULL DEFAULT '',
  `includes` int(10) unsigned NOT NULL DEFAULT '0',
  `rates` blob,
  `notNegative` char(1) NOT NULL DEFAULT '',
  `germanize_price` varchar(5) NOT NULL DEFAULT '',
  `germanize_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_iso_tax_rate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `postalCodes` text,
  `config` int(10) unsigned NOT NULL DEFAULT '0',
  `rate` varchar(255) NOT NULL DEFAULT '',
  `address` blob,
  `amount` varchar(255) NOT NULL DEFAULT '',
  `stop` char(1) NOT NULL DEFAULT '',
  `countries` text,
  `subdivisions` text,
  `guests` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


CREATE TABLE `tl_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `levelOffset` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hardLimit` char(1) NOT NULL DEFAULT '',
  `showProtected` char(1) NOT NULL DEFAULT '',
  `defineRoot` char(1) NOT NULL DEFAULT '',
  `rootPage` int(10) unsigned NOT NULL DEFAULT '0',
  `navigationTpl` varchar(64) NOT NULL DEFAULT '',
  `pages` blob,
  `showHidden` char(1) NOT NULL DEFAULT '',
  `customLabel` varchar(64) NOT NULL DEFAULT '',
  `autologin` char(1) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `redirectBack` char(1) NOT NULL DEFAULT '',
  `cols` varchar(32) NOT NULL DEFAULT '',
  `editable` blob,
  `memberTpl` varchar(64) NOT NULL DEFAULT '',
  `tableless` char(1) NOT NULL DEFAULT '',
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `searchType` varchar(32) NOT NULL DEFAULT '',
  `fuzzy` char(1) NOT NULL DEFAULT '',
  `contextLength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `totalLength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `queryType` varchar(32) NOT NULL DEFAULT '',
  `searchTpl` varchar(64) NOT NULL DEFAULT '',
  `inColumn` varchar(32) NOT NULL DEFAULT '',
  `skipFirst` smallint(5) unsigned NOT NULL DEFAULT '0',
  `loadFirst` char(1) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `transparent` char(1) NOT NULL DEFAULT '',
  `flashvars` varchar(255) NOT NULL DEFAULT '',
  `altContent` text,
  `source` varchar(32) NOT NULL DEFAULT '',
  `singleSRC` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `interactive` char(1) NOT NULL DEFAULT '',
  `flashID` varchar(64) NOT NULL DEFAULT '',
  `flashJS` text,
  `imgSize` varchar(64) NOT NULL DEFAULT '',
  `useCaption` char(1) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `multiSRC` blob,
  `html` text,
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `cal_calendar` blob,
  `cal_noSpan` char(1) NOT NULL DEFAULT '',
  `cal_format` varchar(32) NOT NULL DEFAULT '',
  `cal_order` varchar(32) NOT NULL DEFAULT '',
  `cal_limit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cal_template` varchar(32) NOT NULL DEFAULT '',
  `cal_ctemplate` varchar(32) NOT NULL DEFAULT '',
  `cal_startDay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cal_showQuantity` char(1) NOT NULL DEFAULT '',
  `com_order` varchar(32) NOT NULL DEFAULT '',
  `com_moderate` char(1) NOT NULL DEFAULT '',
  `com_bbcode` char(1) NOT NULL DEFAULT '',
  `com_requireLogin` char(1) NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) NOT NULL DEFAULT '',
  `com_template` varchar(32) NOT NULL DEFAULT '',
  `faq_categories` blob,
  `list_table` varchar(64) NOT NULL DEFAULT '',
  `list_fields` varchar(255) NOT NULL DEFAULT '',
  `list_where` varchar(255) NOT NULL DEFAULT '',
  `list_sort` varchar(255) NOT NULL DEFAULT '',
  `list_search` varchar(255) NOT NULL DEFAULT '',
  `list_info` varchar(255) NOT NULL DEFAULT '',
  `list_info_where` varchar(255) NOT NULL DEFAULT '',
  `list_layout` varchar(32) NOT NULL DEFAULT '',
  `list_info_layout` varchar(32) NOT NULL DEFAULT '',
  `news_archives` blob,
  `news_featured` varchar(16) NOT NULL DEFAULT '',
  `news_numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `news_jumpToCurrent` varchar(16) NOT NULL DEFAULT '',
  `news_metaFields` varchar(255) NOT NULL DEFAULT '',
  `news_template` varchar(32) NOT NULL DEFAULT '',
  `news_format` varchar(32) NOT NULL DEFAULT '',
  `news_startDay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `news_order` varchar(32) NOT NULL DEFAULT '',
  `news_showQuantity` char(1) NOT NULL DEFAULT '',
  `newsletters` blob,
  `nl_channels` blob,
  `nl_hideChannels` char(1) NOT NULL DEFAULT '',
  `nl_subscribe` text,
  `nl_unsubscribe` text,
  `nl_template` varchar(32) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  `reg_groups` blob,
  `reg_allowLogin` char(1) NOT NULL DEFAULT '',
  `reg_skipName` char(1) NOT NULL DEFAULT '',
  `reg_assignDir` char(1) NOT NULL DEFAULT '',
  `reg_close` varchar(32) NOT NULL DEFAULT '',
  `reg_homeDir` varchar(255) NOT NULL DEFAULT '',
  `reg_activate` char(1) NOT NULL DEFAULT '',
  `reg_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_text` text,
  `reg_password` text,
  `rss_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `rss_feed` text,
  `rss_numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rss_template` varchar(32) NOT NULL DEFAULT '',
  `ch_playlists` blob,
  `ch_autoplay` char(1) NOT NULL DEFAULT '1',
  `ch_playersize` varchar(64) NOT NULL DEFAULT '',
  `cal_ignoreDynamic` char(1) NOT NULL DEFAULT '',
  `cal_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `faq_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `news_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `nSarticleAlias` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_list_layout` varchar(64) NOT NULL DEFAULT '',
  `iso_reader_layout` varchar(64) NOT NULL DEFAULT '',
  `iso_reader_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_cart_layout` varchar(64) NOT NULL DEFAULT '',
  `iso_checkout_method` varchar(10) NOT NULL DEFAULT '',
  `iso_login_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_payment_modules` blob,
  `iso_shipping_modules` blob,
  `filter_module` text,
  `iso_cols` int(1) unsigned NOT NULL DEFAULT '1',
  `iso_config_id` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_config_ids` blob,
  `iso_jump_first` char(1) NOT NULL DEFAULT '',
  `iso_forward_review` char(1) NOT NULL DEFAULT '',
  `iso_mail_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_mail_admin` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_sales_email` varchar(255) NOT NULL DEFAULT '',
  `iso_order_conditions` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_addToAddressbook` char(1) NOT NULL DEFAULT '',
  `iso_category_scope` varchar(64) NOT NULL DEFAULT '',
  `iso_list_where` varchar(255) NOT NULL DEFAULT '',
  `iso_filterModules` blob,
  `iso_use_quantity` char(1) NOT NULL DEFAULT '',
  `iso_hide_list` char(1) NOT NULL DEFAULT '',
  `iso_perPage` varchar(64) NOT NULL DEFAULT '',
  `iso_filterTpl` varchar(64) NOT NULL DEFAULT '',
  `iso_filterFields` blob,
  `iso_sortingFields` blob,
  `iso_searchFields` blob,
  `iso_enableLimit` char(1) NOT NULL DEFAULT '',
  `iso_cart_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_checkout_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `orderCompleteJumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_addProductJumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_listingSortField` varchar(255) NOT NULL DEFAULT '',
  `iso_listingSortDirection` varchar(8) NOT NULL DEFAULT '',
  `iso_buttons` blob,
  `iso_related_categories` blob,
  `iso_emptyMessage` char(1) NOT NULL DEFAULT '',
  `iso_noProducts` varchar(255) NOT NULL DEFAULT '',
  `iso_includeMessages` char(1) NOT NULL DEFAULT '',
  `iso_productcache` blob,
  `iso_continueShopping` char(1) NOT NULL DEFAULT '',
  `iso_enableCoupons` char(1) NOT NULL DEFAULT '',
  `iso_order_conditions_position` varchar(6) NOT NULL DEFAULT 'after',
  `iso_filterHideSingle` char(1) NOT NULL DEFAULT '',
  `iso_searchAutocomplete` varchar(255) NOT NULL DEFAULT '',
  `iso_emptyFilter` char(1) NOT NULL DEFAULT '',
  `iso_noFilter` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varbinary(128) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(2) NOT NULL DEFAULT '',
  `robots` varchar(32) NOT NULL DEFAULT '',
  `description` text,
  `redirect` varchar(32) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `dns` varchar(255) NOT NULL DEFAULT '',
  `adminEmail` varchar(255) NOT NULL DEFAULT '',
  `dateFormat` varchar(32) NOT NULL DEFAULT '',
  `timeFormat` varchar(32) NOT NULL DEFAULT '',
  `datimFormat` varchar(32) NOT NULL DEFAULT '',
  `createSitemap` char(1) NOT NULL DEFAULT '',
  `sitemapName` varchar(32) NOT NULL DEFAULT '',
  `autoforward` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `includeLayout` char(1) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `includeCache` char(1) NOT NULL DEFAULT '',
  `cache` int(10) unsigned NOT NULL DEFAULT '0',
  `includeChmod` char(1) NOT NULL DEFAULT '',
  `cuser` int(10) unsigned NOT NULL DEFAULT '0',
  `cgroup` int(10) unsigned NOT NULL DEFAULT '0',
  `chmod` varchar(255) NOT NULL DEFAULT '',
  `noSearch` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(64) NOT NULL DEFAULT '',
  `sitemap` varchar(32) NOT NULL DEFAULT '',
  `hide` char(1) NOT NULL DEFAULT '',
  `guests` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accesskey` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `staticFiles` varchar(255) NOT NULL DEFAULT '',
  `staticSystem` varchar(255) NOT NULL DEFAULT '',
  `staticPlugins` varchar(255) NOT NULL DEFAULT '',
  `useSSL` char(1) NOT NULL DEFAULT '',
  `piwikEnabled` char(1) NOT NULL DEFAULT '',
  `piwikPath` varchar(255) NOT NULL DEFAULT '',
  `piwikSiteID` varchar(4) NOT NULL DEFAULT '',
  `piwikUserToken` varchar(32) NOT NULL DEFAULT '',
  `piwikCountAdmins` char(1) NOT NULL DEFAULT '0',
  `piwikCountUsers` char(1) NOT NULL DEFAULT '1',
  `piwikPageName` char(1) NOT NULL DEFAULT '0',
  `piwik404` char(1) NOT NULL DEFAULT '0',
  `piwikExtensions` text,
  `piwikVisitorCookieTimeout` int(10) unsigned NOT NULL DEFAULT '0',
  `piwikDownloadClasses` varchar(255) NOT NULL DEFAULT '',
  `iso_config` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_setReaderJumpTo` char(1) NOT NULL DEFAULT '',
  `iso_readerJumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `auto_activate_registration` char(1) NOT NULL DEFAULT '',
  `auto_activate_where` varchar(255) NOT NULL DEFAULT '',
  `auto_login_registration` char(1) NOT NULL DEFAULT '',
  `auto_login_activation` char(1) NOT NULL DEFAULT '',
  `piwikTemplate` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(2) NOT NULL DEFAULT '',
  `backendTheme` varchar(32) NOT NULL DEFAULT '',
  `showHelp` char(1) NOT NULL DEFAULT '',
  `thumbnails` char(1) NOT NULL DEFAULT '',
  `useRTE` char(1) NOT NULL DEFAULT '',
  `useCE` char(1) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `admin` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `inherit` varchar(32) NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `forms` blob,
  `formp` blob,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `loginCount` smallint(5) unsigned NOT NULL DEFAULT '3',
  `locked` int(10) unsigned NOT NULL DEFAULT '0',
  `session` blob,
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `currentLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `lastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `calendars` blob,
  `calendarp` blob,
  `news` blob,
  `newp` blob,
  `newsletters` blob,
  `newsletterp` blob,
  `uploader` varchar(32) NOT NULL DEFAULT '',
  `pwChange` char(1) NOT NULL DEFAULT '',
  `faqs` blob,
  `faqp` blob,
  `iso_modules` blob,
  `iso_product_types` blob,
  `iso_product_typep` blob,
  `iso_payment_modules` blob,
  `iso_payment_modulep` blob,
  `iso_shipping_modules` blob,
  `iso_shipping_modulep` blob,
  `iso_tax_classes` blob,
  `iso_tax_classp` blob,
  `iso_tax_rates` blob,
  `iso_tax_ratep` blob,
  `iso_mails` blob,
  `iso_mailp` blob,
  `iso_configs` blob,
  `iso_configp` blob,
  `iso_groups` blob,
  `iso_groupp` blob,
  `translation` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tl_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `forms` blob,
  `formp` blob,
  `alexf` blob,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `calendars` blob,
  `calendarp` blob,
  `news` blob,
  `newp` blob,
  `newsletters` blob,
  `newsletterp` blob,
  `faqs` blob,
  `faqp` blob,
  `iso_modules` blob,
  `iso_product_types` blob,
  `iso_product_typep` blob,
  `iso_payment_modules` blob,
  `iso_payment_modulep` blob,
  `iso_shipping_modules` blob,
  `iso_shipping_modulep` blob,
  `iso_tax_classes` blob,
  `iso_tax_classp` blob,
  `iso_tax_rates` blob,
  `iso_tax_ratep` blob,
  `iso_mails` blob,
  `iso_mailp` blob,
  `iso_configs` blob,
  `iso_configp` blob,
  `iso_groups` blob,
  `iso_groupp` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `tl_iso_orderstatus` DISABLE KEYS;
INSERT INTO `tl_iso_orderstatus` VALUES
  (1,0,1397044470,0,'Schwebend','','1',0,0,''),
  (2,0,1371248460,128,'In Arbeit','','',0,0,''),
  (3,0,1397044434,256,'Erledigt','1','',5,5,''),
  (4,0,1371248382,384,'Warten','','1',1,1,''),
  (5,0,1397044444,512,'Abgebrochen','','',0,0,''),
  (6,0,1390297810,64,'Ausgedruckt','','',0,4,'');
ALTER TABLE `tl_iso_orderstatus` ENABLE KEYS;

ALTER TABLE `tl_iso_mail` DISABLE KEYS;
INSERT INTO `tl_iso_mail` VALUES 
	(2,1369409455,'Bestellung Geschäftskunden','Demo Title','info@example.com','','','mail_default','','','',3),
	(3,1380562827,'Versandbestätigung','Demo Title','info@example.com','','','mail_default','','','',3),
	(4,1390298055,'Bestellung intern','Demo Title','info@example.com','info@xample.org','','mail_default','','','',3),
	(5,1397054875,'Bestellung','Demo Title','info@example.com','','','mail_default','','','',3);
ALTER TABLE `tl_iso_mail` ENABLE KEYS;


ALTER TABLE `tl_iso_mail_content` DISABLE KEYS;
INSERT INTO `tl_iso_mail_content` VALUES 
	(5,3,1380562772,'de','1','Versandbestätigung','Text 1','','HTML 1',NULL),
	(6,4,1390298827,'de','1','Neue Bestellung','Text 2','','HTML 2',NULL),
	(7,5,1397057458,'de','1','Ihre Bestellung','Text 3','','HTML 3',NULL);
ALTER TABLE `tl_iso_mail_content` ENABLE KEYS;
